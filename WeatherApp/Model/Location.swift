//
//  Location.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/1/21.
//

import Foundation
import ObjectMapper

//Location stores basic info about city. Provides lat/lon for Weather type.
class Location: Mappable {
    var city: String?
    var latitude: Double?
    var longitude: Double?
    
    required init?(map: Map) {
        city = "New York"
    }
    
    func mapping(map: Map) {
        city        <- map["name"]
        latitude    <- map["coord.lat"]
        longitude   <- map["coord.lon"]
    }
}
