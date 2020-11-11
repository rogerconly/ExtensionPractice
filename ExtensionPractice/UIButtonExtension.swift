//
//  UIButtonExtension.swift
//  ExtensionPractice
//
//  Created by Roger Yuen on 2020/11/11.
//

import UIKit

extension UIButton {
    func bump() {
        let bumpAnimation = CABasicAnimation(keyPath: "position")
        bumpAnimation.duration = 0.05
        bumpAnimation.repeatCount = 5
        bumpAnimation.autoreverses = true
        bumpAnimation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        bumpAnimation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(bumpAnimation, forKey: "position")
    }
    
    func dim() {
        UIView.animate(withDuration: 0.3, animations: {
                self.alpha = 0.75
        }) { (finished) in
            UIView.animate(withDuration: 0.3) {
                self.alpha = 1.0
            }
        }
    }
    
    func colorize() {
        let randomNumberArray = generateRandomNumber(quantity: 3)
        let randomColor = UIColor(red: randomNumberArray[0] / 255, green: randomNumberArray[1] / 255, blue: randomNumberArray[2] / 255, alpha: 1.0)
        
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = randomColor
        }
    }
}
