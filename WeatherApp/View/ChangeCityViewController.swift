//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/14/21.
//

import UIKit

//View Controller for selecting a new city
class ChangeCityViewController: UIViewController, UITextFieldDelegate {
    
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
        
        newCityTextField.delegate = self
        
        let exitTap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(exitTap)
        //let updateTap = UITapGestureRecognizer(target: updateButton, action: #selector(UIView.endEditing))
        //view.addGestureRecognizer(updateTap)
    }
    
    //calls delegate (ViewController) to switch back to the home screen
    @objc func switchView(){
        newCityTextField.resignFirstResponder()
        delegate?.switchBackToMain(city: newCityTextField.text ?? "New York")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        switchView()
        return true
    }

}
