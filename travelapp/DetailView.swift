//
//  DetailView.swift
//  travelapp
//
//  Created by kehinde on 16/02/2024.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        

            
            
            ZStack(alignment: .bottom){
                
                
 
                    Image("bg").resizable().frame(maxWidth: .infinity).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
  
                VStack{
                    
                    HStack{
                        
                        ForEach(0..<5){item in
                            let isItem = item == 2
                            ZStack{
                                if(isItem){
                                    Circle().fill(.white.opacity(0.3)).frame(width: 13 , height: 13)
                                }
                                Circle().fill(.white).frame(width: isItem ? 7 : 5 , height: isItem ? 7 : 5)
                            }
                        }
                    }
                    
                        VStack(alignment: .leading , spacing: 25){
                            
                            Text("Jasper National Park").foregroundStyle(.black).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 32))
                            Text("Alberta, Canada").foregroundStyle(.black).fontWeight(.semibold).font(.system(size: 16))
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac velit in nascetur pulvinar dignissim. Lectus elit odio hendrerit vel sed ")
                            
                            
                  
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    HStack{
                                        Text("Book Flight for My Trip").foregroundStyle(.white).padding()
                                    }.frame(maxWidth: .infinity)
                                }).background(
                                    Rectangle().fill(.blue).frame(maxWidth:.infinity).cornerRadius(15).frame(height: 67)
                                )
                       

                        }
                    .padding()
                    .background(
                        UnevenRoundedRectangle(cornerRadii: .init(topLeading: 30, topTrailing: 30)).fill(
                            LinearGradient(colors: [.white.opacity(0.56) , .white], startPoint: .top, endPoint: .bottom)
                        )
                        .frame(width: UIScreen.main.bounds.width).edgesIgnoringSafeArea(.all)
                    )
                    
                }
      
                
                
            }

        
    }
}

#Preview {
    DetailView()
}
