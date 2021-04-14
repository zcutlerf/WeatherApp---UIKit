//
//  Weather.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 3/30/21.
//

import Foundation
import ObjectMapper

class Weather: Mappable {
    
    var timezoneOffset: Int?
    var currentTemp: Float?
    var feelsLike: Float?
    var iconID_current: String?
    var description_current: String?
    
    var low: [Float]
    var high: [Float]
    var iconID: [String]
    
    var isItDaytime: Bool
    
    var unixDayTime: Int?
    var swiftDate: Date?
    
    
    required init?(map: Map) {
        self.low = [0,0,0,0,0,0,0,0]
        self.high = [0,0,0,0,0,0,0,0]
        self.iconID = ["","","","","","","",""]
        
        self.isItDaytime = true
    }
    
    //use this to filter JSON (from postman outline) into spots
    func mapping(map: Map) {
        timezoneOffset  <- map["timezone_offset"]
        currentTemp     <- map["current.temp"]
        feelsLike       <- map["current.feels_like"]
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
        
        low[0]             <- map["daily.0.temp.min"]
        high[0]            <- map["daily.0.temp.max"]
        iconID[0]          <- map["daily.0.weather.0.description"]
        
        low[1]            <- map["daily.1.temp.min"]
        high[1]           <- map["daily.1.temp.max"]
        iconID[1]          <- map["daily.1.weather.0.description"]
        
        low[2]            <- map["daily.2.temp.min"]
        high[2]           <- map["daily.2.temp.max"]
        iconID[2]          <- map["daily.2.weather.0.description"]
        
        low[3]            <- map["daily.3.temp.min"]
        high[3]           <- map["daily.3.temp.max"]
        iconID[3]          <- map["daily.3.weather.0.description"]
        
        low[4]            <- map["daily.4.temp.min"]
        high[4]           <- map["daily.4.temp.max"]
        iconID[4]          <- map["daily.4.weather.0.description"]
        
        low[5]            <- map["daily.5.temp.min"]
        high[5]           <- map["daily.5.temp.max"]
        iconID[5]          <- map["daily.5.weather.0.description"]
        
        low[6]            <- map["daily.6.temp.min"]
        high[6]           <- map["daily.6.temp.max"]
        iconID[6]          <- map["daily.6.weather.0.description"]
        
        low[7]            <- map["daily.7.temp.min"]
        high[7]           <- map["daily.7.temp.max"]
        iconID[7]          <- map["daily.7.weather.0.description"]
    }
    
}
