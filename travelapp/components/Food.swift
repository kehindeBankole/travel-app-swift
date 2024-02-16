//
//  Food.swift
//  travelapp
//
//  Created by kehinde on 16/02/2024.
//

import SwiftUI

struct Food: View {
    let items = Array(1...20) // Example array of items
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                ForEach(items, id: \.self) { item in
                    NavigationLink(value:item){
                        Text("Item \(item)")
                            .frame(maxWidth: .infinity)
                            .frame(height: 100)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                }
            }
        }
    }
}

#Preview {
    Food()
}
