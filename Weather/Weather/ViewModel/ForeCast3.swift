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

struct HourForecast3: Identifiable{
    var id = UUID().uuidString
    var hour: String
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
var hourly3 = [
    HourForecast(hour: "16:00", temperature: 12, image: "cloud"),
    HourForecast(hour: "17:00", temperature: 12, image: "cloud"),
    HourForecast(hour: "18:00", temperature: 13, image: "cloud"),
    HourForecast(hour: "19:00", temperature: 13, image: "cloud"),
    HourForecast(hour: "20:00", temperature: 14, image: "cloud"),
    HourForecast(hour: "21:00", temperature: 15, image: "cloud"),
    HourForecast(hour: "22:00", temperature: 15, image: "cloud")

]
