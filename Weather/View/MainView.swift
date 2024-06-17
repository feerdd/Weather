//
//  MainView.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 20/11/23.
//

import SwiftUI
import SpriteKit
import UIKit


struct MainView: View {
    
    //adding Environment for add things just in light or dark mode
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    //found a way to change toolbar color, but not for change it according to the view
    /*init(){
     UIToolbar.appearance().barTintColor = .init(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
     }*/
    var viewModel =  PlaceViewModel()
    
    var body: some View {
        
        
        
        NavigationView{
            TabView{
                ForEach(viewModel.places) { place in
                    
                    
                    VStack{
                        
                        
                        Text(place.name)
                            .fontWeight(.semibold)
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                            .padding(.top,75)
                            .shadow(radius: 10)
                            .accessibilityLabel(place.name)
                        
                        
                        ScrollView{
                            
                            Text("\(place.degree)°")
                                .font(.system(size: 90))
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .shadow(radius: 10)
                                .padding([.top, .leading, .bottom], -13.0)
                                .padding(.trailing, -37.0)
                                .accessibilityLabel("\(place.degree)°")
                            Spacer()
                            Text(place.weather)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .shadow(radius: 10)
                                .accessibilityLabel(place.weather)
                            
                            HStack{
                                Text("H:\(place.h)°")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom)
                                    .shadow(radius: 10)
                                    .accessibilityLabel("H:\(place.h)°")
                                
                                Text("L:\(place.l)°")
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom)
                                    .shadow(radius: 10)
                                    .accessibilityLabel("L:\(place.l)°")
                                
                            }
                            if (place.weather == "Rainy"){
                                HourlyView()
                                    .padding(.top)
                                
                                
                            }
                            if (place.weather == "Clear")
                            {
                                HourlyView2()
                                    .padding(.top)
                            }
                            
                            if (place.weather == "Cloudy")
                            {
                                HourlyView3()
                                    .padding(.top)
                            }
                            
                        }
                        .padding(.bottom, 83)
                        
                    }
                    
                    .background{
                        if (place.weather == "Clear"){
                            ZStack{
                                LinearGradient(gradient: Gradient(colors: [Color.color3, Color.color2,Color.color1]), startPoint: .topLeading, endPoint: .bottomLeading)
                                if self.colorScheme == .dark{
                                    SpriteView(scene: MoonScene(),
                                               options: [.allowsTransparency])
                                    .ignoresSafeArea()
                                    
                                    SpriteView(scene: StarScene(),
                                               options: [.allowsTransparency])
                                    .ignoresSafeArea()
                                }
                                else { SpriteView(scene: SunScene(),
                                                  options: [.allowsTransparency])
                                .ignoresSafeArea()
                                    
                                }
                            }
                        }
                        if (place.weather == "Rainy"){
                            
                            LinearGradient(gradient: Gradient(colors: [Color.rain3, Color.rain2,Color.rain1]), startPoint: .topLeading, endPoint: .bottomLeading)
                            
                            SpriteView(scene: RainScene(),
                                       options: [.allowsTransparency])
                            .ignoresSafeArea()
                            
                            
                            SpriteView(scene: CloudScene(),
                                       options: [.allowsTransparency])
                            .ignoresSafeArea()
                            SpriteView(scene: RainLandingScene(),
                                       options: [.allowsTransparency])
                            .ignoresSafeArea()
                            
                        }
                        if (place.weather == "Sunny"){
                            LinearGradient(gradient: Gradient(colors: [Color.sun1, Color.sun2,Color.sun3]), startPoint: .topLeading, endPoint: .bottomLeading)
                        }
                        if (place.weather == "Cloudy"){
                            ZStack{
                                LinearGradient(gradient: Gradient(colors: [Color.set3, Color.set2,Color.set1]), startPoint: .topLeading, endPoint: .bottomLeading)
                                
                                if self.colorScheme == .dark{
                                    SpriteView(scene: Cloud2Scene(),
                                               options: [.allowsTransparency])
                                    .ignoresSafeArea()
                                    
                                    
                                }
                                else { SpriteView(scene: Cloud3Scene(),
                                                  options: [.allowsTransparency])
                                .ignoresSafeArea()
                                    
                                }
                            }
                            
                            
                            
                        }
                    }.ignoresSafeArea()
                    
                }
                
                
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .ignoresSafeArea()
            
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
            
            .toolbarColorScheme(.dark, for: .bottomBar)  .toolbarBackground(.visible , for: .bottomBar)
            .background(Color.white)
            
            
            
            
        }
        
    }
    
    
}





#Preview {
    MainView()
}
