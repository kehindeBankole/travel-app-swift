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
    
    @State private var animate = false
    var body: some View {
        NavigationStack{
            VStack {

                ScrollView(.vertical , showsIndicators: false){
                    VStack{
                        ZStack(alignment: .top){
                            Image("clear2")
                                .resizable()
                                .imageModifier()
                                .frame(width: UIScreen.main.bounds.width - 70)
                                .offset(y: animate ? -30 : -100)
                                .animation(.easeInOut(duration: 0.5), value: animate)
                            
                            Image("clear1")
                                .resizable()
                                .imageModifier()
                                .frame(width: UIScreen.main.bounds.width - 25)
                                .offset(y: animate ? -15 : -100)
                                .animation(.easeInOut(duration: 0.5).delay(0.5), value: animate)
                            
                        
                                ZStack{
                                    Image("clear").imageModifier().frame(maxWidth: .infinity).ignoresSafeArea(.all)
                                    
                                    HStack{
                                        Spacer()
                                        VStack{
                                            
                                            ForEach(0..<5){item in
                                                let isItem = item == 2
                                                ZStack{
                                                    if(isItem){
                                                        Circle().fill(.white.opacity(0.3)).frame(width: 13 , height: 13)
                                                    }
                                                    Circle().fill(.white).frame(width: isItem ? 7 : 5 , height: isItem ? 7 : 5)
                                                }.opacity(animate ? 1 : 0).animation(.easeIn(duration: 0.3).delay(0.3 * Double(item)), value: animate)
                                            }
                                        }
                                    }.padding()

                            }
                    
                    
                        }
                        HStack{
                            Filter()
                        }.padding(.leading , 20)
                        Food().padding()
                        Spacer()
                    }.onAppear{
                        animate = true
                    }
               Spacer()
                }.ignoresSafeArea(.all)
             
                CustomTab()
       
                .padding()
            }.navigationDestination(for: Int.self){ page in
                DetailView()
            }
        }
    }
}

#Preview {
    ContentView()
}
