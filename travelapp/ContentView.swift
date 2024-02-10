//
//  ContentView.swift
//  travelapp
//
//  Created by kehinde on 06/02/2024.
//

import SwiftUI

extension Image {
    
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()

    }
}

struct ContentView: View {
    var body: some View {
        VStack {

            ScrollView(.vertical , showsIndicators: false){
                VStack{
                    ZStack(alignment: .top){
                        Image("clear2")
                            .resizable()
                            .imageModifier()
                            .frame(width: UIScreen.main.bounds.width - 70)
                            .offset(y:-30)
                        
                        Image("clear1")
                            .resizable()
                            .imageModifier()
                            .frame(width: UIScreen.main.bounds.width - 25)
                            .offset(y:-15)
                        
                        Image("clear").imageModifier().frame(maxWidth: .infinity).ignoresSafeArea(.all)
                
                    }
                    HStack{
                        Filter()
                    }.padding(.leading , 20)
                    Spacer()
                }.frame(height:UIScreen.main.bounds.height)
           Spacer()
            }.ignoresSafeArea(.all)
        
            CustomTab()
   
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
