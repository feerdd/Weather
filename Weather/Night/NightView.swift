//
//  NightView.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 17/11/23.
//

import SwiftUI
import SpriteKit


struct NightView: View {
    
    var body: some View {
        NavigationStack{
            ZStack {
                
                Image("night")
                
                //resizable is used to keep the texts in
                //the right position
                    .resizable()
                    .ignoresSafeArea()
                
                //overlay for blur
                    .overlay(.opacity(0.5))
                
                //allowsTransparency is used to show the background
                SpriteView(scene: StarScene(),
                           options: [.allowsTransparency])
                .ignoresSafeArea()
                SpriteView(scene: MoonScene(),
                           options: [.allowsTransparency])
                .ignoresSafeArea()
                
                VStack{
                    
                    Text("Naples")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.top, 15.0)
                        .foregroundColor(Color.white)
                        .shadow(radius: 10)
                    
                    
                    ScrollView{
                        
                        Text("10°")
                            .font(.system(size: 80))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .shadow(radius: 10)
                            .padding([.top, .leading, .bottom], -13.0)
                            .padding(.trailing, -43)
                        
                        Text("Partly Cloudy")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .shadow(radius: 10)
                        
                        Text("H:16°  L:12°")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                            .shadow(radius: 10)
                        
                    }
                 }
                .padding([.top, .leading, .trailing], 7.0)
            }
            .toolbar{
                ToolbarItemGroup(placement: .bottomBar){
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "map")
                            .foregroundColor(Color.white)
                        
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(Color.white)
                    })
                }
                
            
            
        }
        }
        .toolbar(content: {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        })
    }
}




#Preview {
    NightView()
}
