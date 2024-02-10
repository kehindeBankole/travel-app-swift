//
//  CustomTab.swift
//  travelapp
//
//  Created by kehinde on 10/02/2024.
//

import SwiftUI

enum Tabs : String, CaseIterable {
case home = "house.circle.fill"
case likes =  "heart.circle.fill"
case calender = "calendar.circle.fill"
case message = "message.circle.fill"
}
struct CustomTab: View {
    var body: some View {
        VStack{
            HStack{
                ForEach(Tabs.allCases , id: \.rawValue){tab in
                    Spacer()
                    Image(systemName: tab.rawValue)
                    Spacer()
                }
            }.frame(height: 80)
                .background(
                    RoundedRectangle(cornerRadius: 23)
                        .fill(.ultraThinMaterial)
                        .blur(radius: 1)
                )
        }
    }
}

#Preview {
    CustomTab()
}
