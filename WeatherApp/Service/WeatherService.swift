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
        let url = "https://api.openweathermap.org/data/2.5/weather?q=\(city.replacingOccurrences(of: " ", with: "%20"))&appid=85412364be93aebf863edc1fa09e3448"
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
    
}
