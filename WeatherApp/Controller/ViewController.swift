//
//  ViewController.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 3/22/21.
//

import UIKit
import ObjectMapper

var location: Location?
var weather: Weather?
var fahrenheit: Bool?

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    let cityBarVC = CityBarViewController()
    let currentWeatherVC = CurrentWeatherViewController()
    let futureWeatherVC = FutureWeatherViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.tintColor = .black
        backgroundImageView.image = UIImage.init(named: "background")
        
        fahrenheit = true
        
        /* CALL INIT FUNCTIONS FOR COMPONENTS */
        initWeather()
        
        /* LOAD COMPONENTS ONTO SCREEN */
        
        /* GET WEATHER FOR NEW YORK AS DEFAULT */
        getWeather(city: "New York")
        futureWeatherVC.futureWeatherCollectionView.reloadData()
        
    }
    
    func getWeather(city: String){
        //first get the latitude and longitude of the city
        WeatherService.getLocationByCity(city: city) { (result: Result<Data, Error>) in
            switch result{
            case .success(let data):
                let jsonString = String.init(data: data, encoding: .utf8) ?? ""
                //print(jsonString)
                
                //call mapping function for Location
                location = Location.init(JSONString: jsonString)
                
                //print for check
                print("The city is \(location?.city ?? "") with latitude \(location?.latitude ?? 0) and longitude \(location?.longitude ?? 0)")
                
                //then get actual weather data
                WeatherService.getWeatherByCity(lat: location!.latitude ?? 0, lon: location!.longitude ?? 0) { (result: Result<Data, Error>) in
                    switch result{
                    case .success(let data):
                        let jsonString2 = String.init(data: data, encoding: .utf8) ?? ""
                        //print(jsonString2)
                        
                        //call mapping function for Weather
                        weather = Weather.init(JSONString: jsonString2)
                        
                        /* CALL UPDATE FUNCTIONS FOR COMPONENTS */
                        self.updateWeather()
                    
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
                
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    //assemble the view controllers
    func initWeather(){
        cityBarVC.view.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: cityBarVC.view.frame.height)
        currentWeatherVC.view.frame = CGRect.init(x: 0, y: cityBarVC.view.frame.height, width: UIScreen.main.bounds.width, height: currentWeatherVC.view.frame.height)
        futureWeatherVC.view.frame = CGRect.init(x: 0, y: cityBarVC.view.frame.height + currentWeatherVC.view.frame.height, width: UIScreen.main.bounds.width, height: futureWeatherVC.view.frame.height)
        
        addChild(cityBarVC)
        addChild(currentWeatherVC)
        addChild(futureWeatherVC)
        
        view.addSubview(cityBarVC.view)
        view.addSubview(currentWeatherVC.view)
        view.addSubview(futureWeatherVC.view)
    }
    
    //update the values on the app, like with a new city
    func updateWeather(){
        cityBarVC.cityNameLabel.text = location?.city
        
        currentWeatherVC.currentWeatherTemperature.text = "\(numberAsString(num: weather?.currentTemp ?? 0)) º F"
        currentWeatherVC.currentWeatherLow.text = "Low: \(numberAsString(num: weather?.low[0] ?? 0)) º F"
        currentWeatherVC.currentWeatherHigh.text = "High: \(numberAsString(num: weather?.high[0] ?? 0)) º F"
        currentWeatherVC.currentWeatherDescription.text = weather?.description_current
        
        //print(weather?.iconID_current ?? "no weather description")
        
        let newSymbol = Symbols.init()
        let newWeather = newSymbol.convertSymbol(name: weather?.iconID_current ?? "wi-day-sunny", isItDaytime: weather?.isItDaytime ?? true)
        currentWeatherVC.currentWeatherImageView.image = newWeather
        
        futureWeatherVC.futureWeatherCollectionView.reloadData()
    }
    
    //switch between Fahrenheit and Celsius
    func changeTemperature(){
        if(fahrenheit == true){
            //do something
            
            fahrenheit = false
        } else {
            //do something
            
            fahrenheit = true
        }
    }
}

