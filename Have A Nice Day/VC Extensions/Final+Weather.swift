//
//  Final+Weather.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//

import UIKit

//MARK: - Weather Manager Delegate Methods
extension FinalViewController: WeatherManagerDelegate {
    
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async {
            self.weatherImage.image = UIImage(systemName: weather.conditionName)
            self.adviceLabel.text = self.createAdviceLabel(condition: weather.description, weatherKey: weather.conditionName)
            UIView.animate(withDuration: 2.0) {
                self.weatherImage.alpha = 1
                self.adviceLabel.alpha = 1
            }
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}
