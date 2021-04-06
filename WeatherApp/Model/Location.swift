//
//  Location.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/1/21.
//

import Foundation
import ObjectMapper

class Location: Mappable {
    var city: String?
    var latitude: Double?
    var longitude: Double?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        city        <- map["name"]
        latitude    <- map["coord.lat"]
        longitude   <- map["coord.lon"]
    }
}
