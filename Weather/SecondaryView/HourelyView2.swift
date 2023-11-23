//
//  HourelyView2.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 21/11/23.
//

import SwiftUI
import SpriteKit

struct HourlyView2: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var body: some View {
        
        
        
        VStack{
            VStack{
                
                Text("Clear conditions expected around 16:00 and 17:00")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, -17.0)
                    .shadow(radius: 2)
                    .padding(.horizontal)
                    .accessibilityLabel("Cloudy conditions expected around 16:00 and 17:00")
                
                Divider()
                    .padding(.bottom, 8)
                
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(hourly2)
                        {
                            cast in
                            VStack{
                                
                                Text(cast.hour)
                                    .font(.system(size: 14))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .accessibilityLabel(cast.hour)
                                
                                if self.colorScheme == .light{ Image(systemName: cast.image)
                                        .foregroundStyle(.yellow)
                                        .symbolVariant(.fill)
                                        .padding(.vertical, 3)
                                }
                                else{
                                    Image(systemName: "moon")
                                        .foregroundStyle(.white)
                                        .symbolVariant(.fill)
                                        .padding(.vertical, 3)
                                    
                                }
                                
                                Text("\(Int(cast.temperature))°")
                                    .font(.system(size: 20))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                    .accessibilityLabel("\(Int(cast.temperature - 8))°")
                                
                            }.padding(.trailing, 14)
                        }
                    }
                }
            }
            .padding(10)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 10) {
                
                VStack(alignment: .leading){
                    Text("10-DAY FORECAST")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red:1,green:1,blue:1,opacity:0.5))
                                            .multilineTextAlignment(.leading)
                                            .shadow(radius: 2)
                                            .accessibilityLabel("10-DAY FORECAST")
                                            
                                        
                                        Divider()
                                            .padding(.bottom, 8)
                ForEach(forecast2) {cast in
                    
                    
                        HStack(spacing: 15) {
                            
                            Text(cast.day)
                                .font(.title3.bold())
                                .foregroundStyle(.white)
                                .frame(width: 60, alignment: .leading)
                                .accessibilityLabel(cast.day)
                            
                            
                            if self.colorScheme == .light{ Image(systemName: cast.image)
                                    .foregroundStyle(.yellow)
                                    .symbolVariant(.fill)
                                    .padding(.vertical, 3)
                            }
                            else{
                                Image(systemName: "moon")
                                    .foregroundStyle(.white)
                                    .symbolVariant(.fill)
                                    .padding(.vertical, 3)
                                
                            }
                            
                            Text("\(Int(cast.temperature - 8))°")
                                .font(.title3.bold())
                                .foregroundStyle(.secondary)
                                .foregroundStyle(.white)
                                .accessibilityLabel("\(Int(cast.temperature - 8))°")
                           
                            
                            //Progress Bar...
                            ZStack(alignment: .leading) {
                                
                                Capsule()
                                    .fill(.tertiary)
                                    .foregroundStyle(.white)
                                
                                GeometryReader {proxy in
                                    
                                    Capsule()
                                        .fill(.linearGradient(.init(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing))
                                        .frame(width: (cast.temperature) * 2)
                                    
                                }
                                
                            }
                            .frame(height: 4)
                           
                            Text("\(Int(cast.temperature))°")
                                .font(.title3.bold())
                                .foregroundStyle(.white)
                        }
                    }
                }
            }.padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal)
        }
    }
}
   
    #Preview {
        HourlyView2()
    }
