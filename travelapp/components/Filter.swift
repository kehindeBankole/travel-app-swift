//
//  Filter.swift
//  travelapp
//
//  Created by kehinde on 10/02/2024.
//

import SwiftUI

struct FilterModel : Equatable{
    let name : String
    let icon : String
}

let filters : [FilterModel] = [
FilterModel(name: "Restaurants", icon: "fork.knife"),
FilterModel(name: "Hotels", icon: "house"),
FilterModel(name: "Tickets", icon: "airplane"),
]

struct Filter: View {
    @State private var currentFilter:FilterModel? = nil
    var body: some View {
        HStack{
            ScrollView(.horizontal , showsIndicators: false){
                HStack{
                    ForEach(filters , id:\.name) { filter in
                        Button(action: {
                            currentFilter = filter
                        }
                        , label:{
                            HStack{
                                Group{
                                    Image(systemName: filter.icon)
                                    Text(filter.name)                                }
                                .foregroundStyle(currentFilter == filter ? .white : .black)
                            }.padding().background(
                                    Rectangle()
                                    .fill(currentFilter == filter ? .blue : .white)
                                    .cornerRadius(15)
                                    .frame(height: 58)
                                    .frame(maxWidth:.infinity)
                             
                            ).animation(.none, value:UUID())
                        })
                    }
                }.frame(height: 58)
            }
        }
    }
}

#Preview {
    Filter()
}
