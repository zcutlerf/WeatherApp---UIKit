//
//  Numbers.swift
//  WeatherApp
//
//  Created by Zoe Cutler on 4/8/21.
//

import Foundation

func numberAsString(num: Float) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .none
    formatter.maximumFractionDigits = 0
    formatter.minimumFractionDigits = 0

    let number = NSNumber(value: num)
    let formattedValue = formatter.string(from: number)!
    return "\(formattedValue)"
}

func numberAsString(num: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .none
    formatter.maximumFractionDigits = 0
    formatter.minimumFractionDigits = 0

    let number = NSNumber(value: num)
    let formattedValue = formatter.string(from: number)!
    return "\(formattedValue)"
}
