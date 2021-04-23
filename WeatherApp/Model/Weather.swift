//
//  Weather.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 3/30/21.
//

import Foundation
import ObjectMapper

//Stores all weather info for a location
class Weather: Mappable {
    
    var timezoneOffset: Int?
    var currentTempF: Float?
    var currentTempC: Float?
    var feelsLikeF: Float?
    var feelsLikeC: Float?
    var iconID_current: String?
    var description_current: String?
    
    var lowF: [Float]
    var highF: [Float]
    var lowC: [Float]
    var highC: [Float]
    var iconID: [String]
    
    var isItDaytime: Bool
    
    var unixDayTime: Int?
    var swiftDate: Date?
    
    
    required init?(map: Map) {
        self.lowF = [0,0,0,0,0,0,0,0]
        self.highF = [0,0,0,0,0,0,0,0]
        self.lowC = [0,0,0,0,0,0,0,0]
        self.highC = [0,0,0,0,0,0,0,0]
        self.iconID = ["","","","","","","",""]
        
        self.isItDaytime = true
    }
    
    //use this to filter JSON (from postman outline) into spots
    func mapping(map: Map) {
        timezoneOffset  <- map["timezone_offset"]
        currentTempF     <- map["current.temp"]
        feelsLikeF       <- map["current.feels_like"]
        iconID_current  <- map["current.weather.0.description"]
        description_current  <- map["current.weather.0.main"]
        
        unixDayTime     <- map["daily.0.dt"]
        unixDayTime = (unixDayTime ?? 0) + (timezoneOffset ?? 0)
        swiftDate = Date(timeIntervalSince1970: TimeInterval.init(unixDayTime ?? 0))
        
        var iconString = ""
        iconString <- map["current.weather.0.icon"]
        if(iconString.contains("n")){
            isItDaytime = false
        }
        
        currentTempC = ((currentTempF ?? 32) - 32) * (5/9)
        feelsLikeC = ((feelsLikeF ?? 32) - 32) * (5/9)
        
        for i in 0..<8 {
            lowF[i]             <- map["daily.\(i).temp.min"]
            highF[i]            <- map["daily.\(i).temp.max"]
            iconID[i]          <- map["daily.\(i).weather.0.description"]
            
            lowC[i] = (lowF[i] - 32) * (5/9)
            highC[i] = (highF[i] - 32) * (5/9)
        }
    }
    
}
