//
//  futureWeatherCollectionViewCell.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/5/21.
//

import UIKit

class FutureWeatherCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dayLabel: UILabel!
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var weatherDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = .clear
        
        dayLabel.textColor = .white
        weatherDescription.textColor = .white
        
        dayLabel.text = "Mon"
        weatherImageView.image = UIImage(named: "wi-day-sunny")
        weatherDescription.text = "0/0"
        
    }

}
