//
//  Symbols.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/4/21.
//

import Foundation
import UIKit

//Manages symbols for all weather descriptions returned by OpenWeather
class Symbols {
    func convertSymbol(name: String, isItDaytime: Bool) -> UIImage {
        var image = UIImage.init()
        
        /* SYMBOLS FOR DAYTIME WEATHER */
        if(isItDaytime){
        switch name {
            case "thunderstorm with light rain":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm with rain":
                image = UIImage(named: "wi-thunderstorm") ?? image
            case "thunderstorm with heavy rain":
                image = UIImage(named: "wi-thunderstorm") ?? image
            case "light thunderstorm":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm":
                image = UIImage(named: "wi-thunderstorm") ?? image
            case "heavy thunderstorm":
                image = UIImage(named: "wi-thunderstorm") ?? image
            case "ragged thunderstorm":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm with light drizzle":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm with drizzle":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm with heavy drizzle":
                image = UIImage(named: "wi-thunderstorm") ?? image

            case "light intensity drizzle":
                image = UIImage(named: "wi-sprinkle") ?? image
            case "drizzle":
                image = UIImage(named: "wi-showers") ?? image
            case "heavy intensity drizzle":
                image = UIImage(named: "wi-rain") ?? image
            case "light intensity drizzle rain":
                image = UIImage(named: "wi-sprinkle") ?? image
            case "drizzle rain":
                image = UIImage(named: "wi-showers") ?? image
            case "heavy intensity drizzle rain":
                image = UIImage(named: "wi-rain") ?? image
            case "shower rain and drizzle":
                image = UIImage(named: "wi-day-showers") ?? image
            case "heavy shower rain and drizzle":
                image = UIImage(named: "wi-day-rain") ?? image
            case "shower drizzle":
                image = UIImage(named: "wi-day-showers") ?? image

            case "light rain":
                image = UIImage(named: "wi-showers") ?? image
            case "moderate rain":
                image = UIImage(named: "wi-rain") ?? image
            case "heavy intensity rain":
                image = UIImage(named: "wi-rain") ?? image
            case "very heavy rain":
                image = UIImage(named: "wi-rain") ?? image
            case "extreme rain":
                image = UIImage(named: "wi-rain") ?? image
            case "freezing rain":
                image = UIImage(named: "wi-sleet") ?? image
            case "light intensity shower rain":
                image = UIImage(named: "wi-day-showers") ?? image
            case "shower rain":
                image = UIImage(named: "wi-day-rain") ?? image
            case "heavy intensity shower rain":
                image = UIImage(named: "wi-day-rain") ?? image
            case "ragged shower rain":
                image = UIImage(named: "wi-day-rain") ?? image

            case "light snow":
                image = UIImage(named: "wi-snow") ?? image
            case "Snow":
                image = UIImage(named: "wi-snow") ?? image
            case "Heavy snow":
                image = UIImage(named: "wi-snow") ?? image
            case "Sleet":
                image = UIImage(named: "wi-sleet") ?? image
            case "Light shower sleet":
                image = UIImage(named: "wi-sleet") ?? image
            case "Shower sleet":
                image = UIImage(named: "wi-sleet") ?? image
            case "Light rain and snow":
                image = UIImage(named: "wi-rain-mix") ?? image
            case "Rain and snow":
                image = UIImage(named: "wi-rain-mix") ?? image
            case "Light shower snow":
                image = UIImage(named: "wi-rain-mix") ?? image
            case "Shower snow":
                image = UIImage(named: "wi-rain-mix") ?? image
            case "Heavy shower snow":
                image = UIImage(named: "wi-rain-mix") ?? image

            case "mist":
                image = UIImage(named: "wi-day-sprinkle") ?? image
            case "Smoke":
                image = UIImage(named: "wi-smoke") ?? image
            case "Haze":
                image = UIImage(named: "wi-day-haze") ?? image
            case "sand/ dust whirls":
                image = UIImage(named: "wi-dust") ?? image
            case "fog":
                image = UIImage(named: "wi-fog") ?? image
            case "sand":
                image = UIImage(named: "wi-dust") ?? image
            case "dust":
                image = UIImage(named: "wi-dust") ?? image
            case "volcanic ash":
                image = UIImage(named: "wi-volcano") ?? image
            case "squalls":
                image = UIImage(named: "wi-strong-wind") ?? image
            case "tornado":
                image = UIImage(named: "wi-tornado") ?? image

            case "clear sky":
                image = UIImage(named: "wi-day-sunny") ?? image

            case "few clouds":
                image = UIImage(named: "wi-day-sunny-overcast") ?? image
            case "scattered clouds":
                image = UIImage(named: "wi-day-cloudy-high") ?? image
            case "broken clouds":
                image = UIImage(named: "wi-day-cloudy") ?? image
            case "overcast clouds":
                image = UIImage(named: "wi-cloudy") ?? image
                
            default:
                image = UIImage(named: "wi-day-sunny") ?? image
            }
        }
        
        /* SYMBOLS FOR NIGHTTIME WEATHER */
        else {
            switch name{
            case "thunderstorm with light rain":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm with rain":
                image = UIImage(named: "wi-thunderstorm") ?? image
            case "thunderstorm with heavy rain":
                image = UIImage(named: "wi-thunderstorm") ?? image
            case "light thunderstorm":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm":
                image = UIImage(named: "wi-thunderstorm") ?? image
            case "heavy thunderstorm":
                image = UIImage(named: "wi-thunderstorm") ?? image
            case "ragged thunderstorm":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm with light drizzle":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm with drizzle":
                image = UIImage(named: "wi-storm-showers") ?? image
            case "thunderstorm with heavy drizzle":
                image = UIImage(named: "wi-thunderstorm") ?? image

            case "light intensity drizzle":
                image = UIImage(named: "wi-sprinkle") ?? image
            case "drizzle":
                image = UIImage(named: "wi-showers") ?? image
            case "heavy intensity drizzle":
                image = UIImage(named: "wi-rain") ?? image
            case "light intensity drizzle rain":
                image = UIImage(named: "wi-sprinkle") ?? image
            case "drizzle rain":
                image = UIImage(named: "wi-showers") ?? image
            case "heavy intensity drizzle rain":
                image = UIImage(named: "wi-rain") ?? image
            case "shower rain and drizzle":
                image = UIImage(named: "wi-night-showers") ?? image
            case "heavy shower rain and drizzle":
                image = UIImage(named: "wi-night-rain") ?? image
            case "shower drizzle":
                image = UIImage(named: "wi-night-showers") ?? image

            case "light rain":
                image = UIImage(named: "wi-showers") ?? image
            case "moderate rain":
                image = UIImage(named: "wi-rain") ?? image
            case "heavy intensity rain":
                image = UIImage(named: "wi-rain") ?? image
            case "very heavy rain":
                image = UIImage(named: "wi-rain") ?? image
            case "extreme rain":
                image = UIImage(named: "wi-rain") ?? image
            case "freezing rain":
                image = UIImage(named: "wi-sleet") ?? image
            case "light intensity shower rain":
                image = UIImage(named: "wi-night-showers") ?? image
            case "shower rain":
                image = UIImage(named: "wi-night-rain") ?? image
            case "heavy intensity shower rain":
                image = UIImage(named: "wi-night-rain") ?? image
            case "ragged shower rain":
                image = UIImage(named: "wi-night-rain") ?? image

            case "light snow":
                image = UIImage(named: "wi-snow") ?? image
            case "Snow":
                image = UIImage(named: "wi-snow") ?? image
            case "Heavy snow":
                image = UIImage(named: "wi-snow") ?? image
            case "Sleet":
                image = UIImage(named: "wi-sleet") ?? image
            case "Light shower sleet":
                image = UIImage(named: "wi-sleet") ?? image
            case "Shower sleet":
                image = UIImage(named: "wi-sleet") ?? image
            case "Light rain and snow":
                image = UIImage(named: "wi-rain-mix") ?? image
            case "Rain and snow":
                image = UIImage(named: "wi-rain-mix") ?? image
            case "Light shower snow":
                image = UIImage(named: "wi-rain-mix") ?? image
            case "Shower snow":
                image = UIImage(named: "wi-rain-mix") ?? image
            case "Heavy shower snow":
                image = UIImage(named: "wi-rain-mix") ?? image

            case "mist":
                image = UIImage(named: "wi-night-sprinkle") ?? image
            case "Smoke":
                image = UIImage(named: "wi-smoke") ?? image
            case "Haze":
                image = UIImage(named: "wi-night-haze") ?? image
            case "sand/ dust whirls":
                image = UIImage(named: "wi-dust") ?? image
            case "fog":
                image = UIImage(named: "wi-fog") ?? image
            case "sand":
                image = UIImage(named: "wi-dust") ?? image
            case "dust":
                image = UIImage(named: "wi-dust") ?? image
            case "volcanic ash":
                image = UIImage(named: "wi-volcano") ?? image
            case "squalls":
                image = UIImage(named: "wi-strong-wind") ?? image
            case "tornado":
                image = UIImage(named: "wi-tornado") ?? image

            case "clear sky":
                image = UIImage(named: "wi-night-clear") ?? image

            case "few clouds":
                image = UIImage(named: "wi-night-alt-partly-cloudy") ?? image
            case "scattered clouds":
                image = UIImage(named: "wi-night-alt-cloudy-high") ?? image
            case "broken clouds":
                image = UIImage(named: "wi-night-alt-cloudy") ?? image
            case "overcast clouds":
                image = UIImage(named: "wi-cloudy") ?? image
                
            default:
                image = UIImage(named: "wi-night-clear") ?? image
            }
        }
        
        //invert image
        let ciImage = CIImage.init(image: image)
        if let filter = CIFilter(name: "CIColorInvert") {
            filter.setValue(ciImage, forKey: kCIInputImageKey)
            let newImage = UIImage(ciImage: filter.outputImage ?? CIImage.init())
            image = newImage
        }
        
        return image
    }
}
/*
func resizeImage(image: UIImage, size: CGSize) -> UIImage {
    let renderer = UIGraphicsImageRenderer(size: size)
    return renderer.image { (context) in
        image.draw(in: CGRect(origin: .zero, size: size))
    }
}
*/
