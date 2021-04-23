//
//  WeatherService.swift
//  WeatherApp
//
//  Service to call OpenWeather's API with JSON
//
//  Created by Zoe Cutler on 3/22/21.
//

import Foundation
import Alamofire

class WeatherService {
    //Returns a JSON String representing basic info about the location requested
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
    //Returns a JSON String representing detailed weather for latitude and longitude
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
}
