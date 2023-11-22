//
//  RainView.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 15/11/23.
//

import SwiftUI
import SpriteKit


struct RainView: View {
    
    var body: some View {
        
            
            
            NavigationStack{
                ZStack {
                
                    
                    
                    Image("cloud")
                    
                    //resizable is used to keep the texts in
                    //the right position
                        .resizable()
                        .ignoresSafeArea()
                    
                    //overlay ultrathin/opacity for blur
                        .overlay(.ultraThinMaterial)
                    
                    //allowsTransparency is used to show the background
                    SpriteView(scene: RainScene(),
                               options: [.allowsTransparency])
                    .ignoresSafeArea()
                    
                    SpriteView(scene: RainLandingScene(),
                               options: [.allowsTransparency])
                    .ignoresSafeArea()
                    
                  
                        
                            VStack{
                                
                                
                                Text("My Location")
                                    .font(.title)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                    .padding(.top, 15.0)
                                    .shadow(radius: 10)
                                
                                Text("London")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .shadow(radius: 10)
                                
                                ScrollView{
                                    
                                    Text("10°")
                                        .font(.system(size: 80))
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 10)
                                        .padding([.top, .leading, .bottom], -13.0)
                                        .padding(.trailing, -37.0)
                                    
                                    Text("Rainy")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 10)
                                    
                                    Text("H:2°  L:7°")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        .padding(.bottom)
                                        .shadow(radius: 10)
                                    
                                    HourlyView()
                                    
                                    
                                }
                                
                            }
                            
                            
                    }
                    
                    
                    
                }
                
                
            }
        
    }







#Preview {
    RainView()
}
