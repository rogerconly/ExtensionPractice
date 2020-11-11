//
//  Helper.swift
//  ExtensionPractice
//
//  Created by Roger Yuen on 2020/11/11.
//

import UIKit

func generateRandomNumber(quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    for _ in 0...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
