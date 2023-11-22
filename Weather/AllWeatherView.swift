//
//  AllWeatherView.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 17/11/23.
//

import SwiftUI

struct AllWeatherView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .toolbar{
                ToolbarItemGroup(placement: .bottomBar){
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "map")
                    })
                    
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "list.bullet")
                        })
                }
            }.background(Color.clear)
            
        }
    }
}
#Preview {
    AllWeatherView()
}
