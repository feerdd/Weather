//
//  forecast2.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 21/11/23.
//

import Foundation
import SwiftUI

struct DayForecast2: Identifiable {
    
    var id = UUID().uuidString
    var day: String
    var temperature: CGFloat
    var image: String
    
}
struct HourForecast2: Identifiable{
    var id = UUID().uuidString
    var hour: String
    var temperature: CGFloat
    var image: String
}

var forecast2 = [
    
    DayForecast(day: "Today", temperature: 20, image: "sun.max"),
    DayForecast(day: "Mon", temperature: 23, image: "sun.max"),
    DayForecast(day: "Tue", temperature: 18, image: "sun.max"),
    DayForecast(day: "Wed", temperature: 21, image: "sun.max"),
    DayForecast(day: "Thu", temperature: 20, image: "sun.max"),
    DayForecast(day: "Fri", temperature: 19, image: "sun.max"),
    DayForecast(day: "Sat", temperature: 20, image: "sun.max"),
    DayForecast(day: "Sun", temperature: 22, image: "sun.max"),

]
var hourly2 = [
    HourForecast(hour: "16:00", temperature: 15, image: "sun.max"),
    HourForecast(hour: "17:00", temperature: 16, image: "sun.max"),
    HourForecast(hour: "18:00", temperature: 17, image: "sun.max"),
    HourForecast(hour: "19:00", temperature: 18, image: "sun.max"),
    HourForecast(hour: "20:00", temperature: 18, image: "sun.max"),
    HourForecast(hour: "21:00", temperature: 18, image: "sun.max"),
    HourForecast(hour: "22:00", temperature: 18, image: "sun.max")

]
