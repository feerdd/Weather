//
//  ForeCast3.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 23/11/23.
//

import Foundation
import Foundation
import SwiftUI

struct DayForecast3: Identifiable {
    
    var id = UUID().uuidString
    var day: String
    var temperature: CGFloat
    var image: String
    
}

var forecast3 = [
    
    DayForecast(day: "Today", temperature: 11, image: "cloud"),
    DayForecast(day: "Mon", temperature: 12, image: "cloud"),
    DayForecast(day: "Tue", temperature: 10, image: "cloud"),
    DayForecast(day: "Wed", temperature: 15, image: "cloud"),
    DayForecast(day: "Thu", temperature: 13, image: "cloud"),
    DayForecast(day: "Fri", temperature: 13, image: "cloud"),
    DayForecast(day: "Sat", temperature: 12, image: "cloud"),
    DayForecast(day: "Sun", temperature: 10, image: "cloud"),

]
