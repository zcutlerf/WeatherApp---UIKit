//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/14/21.
//

import UIKit

class ChangeCityViewController: UIViewController {
    
    weak var delegate: ChangeCityDelegate?

    @IBOutlet weak var newCityLabel: UILabel!
    @IBOutlet weak var newCityTextField: UITextField!
    @IBOutlet weak var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemIndigo
        
        newCityLabel.textColor = .white
        updateButton.setTitleColor(.white, for: .normal)
        updateButton.setTitleColor(.lightGray, for: .highlighted)

        updateButton.addTarget(self, action: #selector(switchView), for: .touchUpInside)
    }
    
    @objc func switchView(){
        delegate?.switchBackToMain(city: newCityTextField.text ?? "New York")
    }

}
