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
        
        lowF[0]             <- map["daily.0.temp.min"]
        highF[0]            <- map["daily.0.temp.max"]
        iconID[0]          <- map["daily.0.weather.0.description"]
        
        lowF[1]            <- map["daily.1.temp.min"]
        highF[1]           <- map["daily.1.temp.max"]
        iconID[1]          <- map["daily.1.weather.0.description"]
        
        lowF[2]            <- map["daily.2.temp.min"]
        highF[2]           <- map["daily.2.temp.max"]
        iconID[2]          <- map["daily.2.weather.0.description"]
        
        lowF[3]            <- map["daily.3.temp.min"]
        highF[3]           <- map["daily.3.temp.max"]
        iconID[3]          <- map["daily.3.weather.0.description"]
        
        lowF[4]            <- map["daily.4.temp.min"]
        highF[4]           <- map["daily.4.temp.max"]
        iconID[4]          <- map["daily.4.weather.0.description"]
        
        lowF[5]            <- map["daily.5.temp.min"]
        highF[5]           <- map["daily.5.temp.max"]
        iconID[5]          <- map["daily.5.weather.0.description"]
        
        lowF[6]            <- map["daily.6.temp.min"]
        highF[6]           <- map["daily.6.temp.max"]
        iconID[6]          <- map["daily.6.weather.0.description"]
        
        lowF[7]            <- map["daily.7.temp.min"]
        highF[7]           <- map["daily.7.temp.max"]
        iconID[7]          <- map["daily.7.weather.0.description"]
        
        currentTempC = ((currentTempF ?? 32) - 32) * (5/9)
        feelsLikeC = ((feelsLikeF ?? 32) - 32) * (5/9)
        
        for i in 0..<8 {
            lowC[i] = (lowF[i] - 32) * (5/9)
            highC[i] = (highF[i] - 32) * (5/9)
        }
    }
    
}
