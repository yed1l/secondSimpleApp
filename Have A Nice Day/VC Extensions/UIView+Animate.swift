//
//  UIView+Animate.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit

extension ViewController {
    
    func animateButton() {
        startButton.alpha = 0
        startButton.isEnabled = false
        UIView.animate(withDuration: 1.7, delay: 1.0, options: .curveEaseIn, animations: {
            self.startButton.alpha = 1
        }, completion: { (finished) in
            self.startButton.isEnabled = true
        })
    }
}
