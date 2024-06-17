//
//  Forecast.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 21/11/23.
//

import Foundation
import SwiftUI

struct DayForecast: Identifiable {
    
    var id = UUID().uuidString
    var day: String
    var temperature: CGFloat
    var image: String

    
}

struct HourForecast: Identifiable{
    var id = UUID().uuidString
    var hour: String
    var temperature: CGFloat
    var image: String
}

var forecast = [
    
    DayForecast(day: "Today", temperature: 10, image: "cloud.heavyrain"),
    DayForecast(day: "Mon", temperature: 11, image: "cloud.heavyrain"),
    DayForecast(day: "Tue", temperature: 12, image: "cloud"),
    DayForecast(day: "Wed", temperature: 10, image: "cloud.heavyrain"),
    DayForecast(day: "Thu", temperature: 12, image: "cloud.heavyrain"),
    DayForecast(day: "Fri", temperature: 9, image: "cloud"),
    DayForecast(day: "Sat", temperature: 7, image: "cloud.heavyrain"),
    DayForecast(day: "Sun", temperature: 9, image: "cloud"),

]

var hourly = [
    HourForecast(hour: "16:00", temperature: 5, image: "cloud.heavyrain.fill"),
    HourForecast(hour: "17:00", temperature: 6, image: "cloud.heavyrain.fill"),
    HourForecast(hour: "18:00", temperature: 5, image: "cloud.heavyrain.fill"),
    HourForecast(hour: "19:00", temperature: 5, image: "cloud.heavyrain.fill"),
    HourForecast(hour: "20:00", temperature: 6, image: "cloud.heavyrain.fill"),
    HourForecast(hour: "21:00", temperature: 7, image: "cloud.heavyrain.fill"),
    HourForecast(hour: "22:00", temperature: 6, image: "cloud.heavyrain.fill")


]
