//
//  CityBarViewController.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/1/21.
//

import UIKit

class CityBarViewController: UIViewController {
    
    weak var delegate: ChangeCityDelegate?

    @IBOutlet weak var cityNameLabel: UILabel!
    
    @IBOutlet weak var cityChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .clear
        cityNameLabel.textColor = .white
        
        cityChangeButton.setTitle("", for: .normal)
        
        let arrow = UIImage(named: "oval-arrow")
        cityChangeButton.setImage(arrow, for: .normal)
        
        cityChangeButton.addTarget(self, action: #selector(switchView), for: .touchUpInside)
    }
    
    @objc func switchView(){
        delegate?.switchToChangeCity()
    }
    
}

protocol ChangeCityDelegate: NSObject {
    func switchToChangeCity()
    func switchBackToMain(city: String)
}
