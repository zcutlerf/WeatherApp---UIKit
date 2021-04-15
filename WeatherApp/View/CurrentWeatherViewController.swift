//
//  CurrentWeatherViewController.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/1/21.
//

import UIKit

class CurrentWeatherViewController: UIViewController {
    
    weak var delegate: TempChangeDelegate?

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
        let sunny = newSymbol.convertSymbol(name: "wi-day-sunny", isItDaytime: true)
        currentWeatherImageView.image = sunny
        currentWeatherImageView.layer.minificationFilter = .trilinear
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(changeTemp))
        
        currentWeatherTemperature.isUserInteractionEnabled = true
        currentWeatherTemperature.addGestureRecognizer(tapGesture)
    }
    
    @objc func changeTemp(){
        delegate?.changeTemperature()
    }
    
    func changeTempLocal(){
        if(fahrenheit == true){
            
        } else {
            
        }
    }

}

protocol TempChangeDelegate: NSObject {
    func changeTemperature()
}
