//
//  CurrentWeatherViewController.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/1/21.
//

import UIKit

class CurrentWeatherViewController: UIViewController {

    @IBOutlet weak var currentWeatherImageView: UIImageView!
    @IBOutlet weak var currentWeatherTemperature: UILabel!
    @IBOutlet weak var currentWeatherLow: UILabel!
    @IBOutlet weak var currentWeatherHigh: UILabel!
    @IBOutlet weak var currentWeatherDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .clear
        currentWeatherTemperature.textColor = .white
        currentWeatherLow.textColor = .white
        currentWeatherHigh.textColor = .white
        currentWeatherDescription.textColor = .white
        
        
        let newSymbol = Symbols.init()
        let sunny = newSymbol.convertSymbol(name: "wi-day-sunny")
        currentWeatherImageView.image = sunny
    }

}
