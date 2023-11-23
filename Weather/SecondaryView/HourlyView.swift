//
//  HourlyView.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 17/11/23.
//

import SwiftUI
import SpriteKit

struct HourlyView: View {
    var body: some View {
        
        VStack{
            VStack{
                
                Text("Rain conditions expected around 16:00 and 17:00")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, -17.0)
                    .shadow(radius: 2)
                    .padding(.horizontal)
                    .accessibilityLabel("Rain conditions expected around 16:00 and 17:00")
                    
                
                Divider()
                    .padding(.bottom, 8)
                
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(hourly)
                        {
                            cast in
                            VStack{
                                
                                Text(cast.hour)
                                    .font(.system(size: 14))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .accessibilityLabel(cast.hour)
                                
                                Image(systemName:cast.image)
                                    .foregroundStyle(.white,.cyan)
                                    .padding(.vertical, 3)
                                    
                                
                                Text("\(Int(cast.temperature ))°")
                                    .font(.system(size: 20))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                                   .accessibilityLabel("\(Int(cast.temperature))°")
                                
                            }.accessibilityElement(children: .combine)
                            .padding(.trailing, 14)
                        }
                    }
                }
            }
            .padding(10)
            .background(.ultraThinMaterial ,  in: RoundedRectangle(cornerRadius: 16))
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
                ForEach(forecast) {cast in
                    
                    
                    HStack(spacing: 15) {
                        
                        Text(cast.day)
                            .font(.title3.bold())
                            .foregroundStyle(.white)
                            .frame(width: 60, alignment: .leading)
                            .accessibilityLabel(cast.day)
                        
                        
                        Image(systemName: cast.image)
                            .font(.title3)
                            .symbolVariant(.fill)
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white,.cyan)
                            .frame(width: 30)
                        
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
                    .accessibilityElement(children: .combine)
                    }
                }
            }.padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal)
                
        }
    }
}
    
    #Preview {
        HourlyView()
    }
