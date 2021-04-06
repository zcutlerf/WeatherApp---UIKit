//
//  FutureWeatherViewController.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/1/21.
//

import UIKit

class FutureWeatherViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var futureWeatherCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .clear
        
        let layout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize.init(width: 132, height: 132)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        
        futureWeatherCollectionView.collectionViewLayout = layout
        futureWeatherCollectionView.isScrollEnabled = true
        futureWeatherCollectionView.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 137)
        //futureWeatherCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "futureWeatherCell")
        futureWeatherCollectionView.register(UINib.init(nibName: "FutureWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "futureWeatherCell")
        futureWeatherCollectionView.backgroundColor = .clear
        
        futureWeatherCollectionView.delegate = self
        futureWeatherCollectionView.dataSource = self
        
        view.addSubview(futureWeatherCollectionView)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "futureWeatherCell", for: indexPath) as! FutureWeatherCollectionViewCell
        
        /*
        cell.dayLabel.text = "Mon"
        //cell.dayLabel.textAlignment = .center
        //cell.dayLabel.font = UIFont.init(name: "Avenir Next Demi Bold", size: 19)
        cell.dayLabel.textColor = .white
        
        let newSymbol = Symbols.init()
        let newWeather = newSymbol.convertSymbol(name: weather?.iconID[indexPath.row] ?? "")
        cell.weatherImageView.image = newWeather
        
        cell.weatherDescription.text = "\(String(describing: weather?.high[indexPath.row] ?? 0))/\(String(describing: weather?.low[indexPath.row] ?? 0))"
        //cell.weatherDescription.textAlignment = .center
        //cell.weatherDescription.font = UIFont.init(name: "Avenir Next", size: 17)
        cell.weatherDescription.textColor = .white
        */
        
        /*
        for subview in cell.contentView.subviews {
            subview.removeFromSuperview()
        }
        
        let dayLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 132, height: 21))
        dayLabel.text = "Mon"
        dayLabel.textAlignment = .center
        dayLabel.font = UIFont.init(name: "Avenir Next Demi Bold", size: 19)
        dayLabel.textColor = .white
        cell.addSubview(dayLabel)
        
        let weatherImageView = UIImageView.init(frame: CGRect.init(x: 21, y: 21, width: 90, height: 90))
        let newSymbol = Symbols.init()
        let newWeather = newSymbol.convertSymbol(name: weather?.iconID[indexPath.row] ?? "")
        weatherImageView.image = newWeather
        cell.addSubview(weatherImageView)
        
        let descLabel = UILabel.init(frame: CGRect.init(x: 0, y: 111, width: 132, height: 21))
        descLabel.text = "\(String(describing: weather?.high[indexPath.row] ?? 0))/\(String(describing: weather?.low[indexPath.row] ?? 0))"
        descLabel.textAlignment = .center
        descLabel.font = UIFont.init(name: "Avenir Next", size: 17)
        descLabel.textColor = .white
        cell.addSubview(descLabel)*/
    
        return cell
    }

}
