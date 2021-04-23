//
//  WeatherService.swift
//  WeatherApp
//
//  The point of this layer is to help us make HTTP calls
//
//  Created by Zoe Cutler on 3/22/21.
//

import Foundation
import Alamofire

class WeatherService {
    
    static func getLocationByCity(city: String, completion: @escaping(Swift.Result<Data, Error>) -> Void) {
        var cityString = city
        cityString = cityString.replacingOccurrences(of: " ", with: "%20")
        cityString = cityString.replacingOccurrences(of: ",", with: "%2C")
        let url = "https://api.openweathermap.org/data/2.5/weather?q=\(cityString)&appid=85412364be93aebf863edc1fa09e3448"
        let request = AF.request(url)
        
        request.responseJSON { (response) in
            guard let data = response.data else {
                completion(.failure(response.error!))
                return
            }
            
            completion(.success(data))
        }
    }
    
    static func getWeatherByCity(lat: Double, lon: Double, completion: @escaping(Swift.Result<Data, Error>) -> Void) {
        let url = "https://api.openweathermap.org/data/2.5/onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=85412364be93aebf863edc1fa09e3448&units=imperial"
        let request = AF.request(url)
        
        request.responseJSON { (response) in
            guard let data = response.data else {
                completion(.failure(response.error!))
                return
            }
            
            completion(.success(data))
        }
    }
    
    func convertStateCode(subString: Substring) -> Substring {
//        let stateDictionary: [Substring : Substring] = [
//        "AK" : "Alaska",
//        "AL" : "Alabama",
//        "AR" : "Arkansas",
//        "AS" : "American Samoa",
//        "AZ" : "Arizona",
//        "CA" : "California",
//        "CO" : "Colorado",
//        "CT" : "Connecticut",
//        "DC" : "District of Columbia",
//        "DE" : "Delaware",
//        "FL" : "Florida",
//        "GA" : "Georgia",
//        "GU" : "Guam",
//        "HI" : "Hawaii",
//        "IA" : "Iowa",
//        "ID" : "Idaho",
//        "IL" : "Illinois",
//        "IN" : "Indiana",
//        "KS" : "Kansas",
//        "KY" : "Kentucky",
//        "LA" : "Louisiana",
//        "MA" : "Massachusetts",
//        "MD" : "Maryland",
//        "ME" : "Maine",
//        "MI" : "Michigan",
//        "MN" : "Minnesota",
//        "MO" : "Missouri",
//        "MS" : "Mississippi",
//        "MT" : "Montana",
//        "NC" : "North Carolina",
//        "ND" : "North Dakota",
//        "NE" : "Nebraska",
//        "NH" : "New Hampshire",
//        "NJ" : "New Jersey",
//        "NM" : "New Mexico",
//        "NV" : "Nevada",
//        "NY" : "New York",
//        "OH" : "Ohio",
//        "OK" : "Oklahoma",
//        "OR" : "Oregon",
//        "PA" : "Pennsylvania",
//        "PR" : "Puerto Rico",
//        "RI" : "Rhode Island",
//        "SC" : "South Carolina",
//        "SD" : "South Dakota",
//        "TN" : "Tennessee",
//        "TX" : "Texas",
//        "UT" : "Utah",
//        "VA" : "Virginia",
//        "VI" : "Virgin Islands",
//        "VT" : "Vermont",
//        "WA" : "Washington",
//        "WI" : "Wisconsin",
//        "WV" : "West Virginia",
//        "WY" : "Wyoming"]
        
        return subString
    }
}
