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
        
        let dateFormatter = DateFormatter()
        var date = weather?.swiftDate ?? Date(timeIntervalSince1970: TimeInterval.init())
        date.addTimeInterval(TimeInterval.init(indexPath.row * 86400))
        dateFormatter.dateFormat = "EEE"
        
        cell.dayLabel.text = dateFormatter.string(from: date)
        
        let newSymbol = Symbols.init()
        let newWeather = newSymbol.convertSymbol(name: weather?.iconID[indexPath.row] ?? "", isItDaytime: true)
        cell.weatherImageView.image = newWeather
        
        if(fahrenheit == true){
            cell.weatherDescription.text = "\(numberAsString(num: weather?.highF[indexPath.row] ?? 0))/\(numberAsString(num: weather?.lowF[indexPath.row] ?? 0))"
        } else {
            cell.weatherDescription.text = "\(numberAsString(num: weather?.highC[indexPath.row] ?? 0))/\(numberAsString(num: weather?.lowC[indexPath.row] ?? 0))"
        }
    
        return cell
    }

}
