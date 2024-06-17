//
//  PlaceModel.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 15/11/23.
//

import Foundation
struct Place: Identifiable {
    
    var id: UUID = UUID()
    var name:String
    var degree:Int
    var weather:String
    var h:Int
    var l:Int
    var image:String
}
