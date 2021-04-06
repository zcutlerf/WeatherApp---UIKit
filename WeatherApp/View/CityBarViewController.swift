//
//  CityBarViewController.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/1/21.
//

import UIKit

class CityBarViewController: UIViewController {

    @IBOutlet weak var cityNameLabel: UILabel!

    @IBOutlet weak var cityChangeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .clear
        cityNameLabel.textColor = .white
        
        let arrow = UIImage(named: "oval-arrow")
        cityChangeImageView.image = arrow
        
    }
    

}
