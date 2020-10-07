//
//  WeatherDataModel.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import Foundation

//MARK: - Weather Data

struct WeatherData: Codable {
    // Used for decoding data into
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}

//MARK: - Weather Model

struct WeatherModel {
    // Used for presenting weather data to user
    var conditionId: Int
    var description: String
    var temperature: Double
    
    var conditionName: String {
        switch conditionId {
        case 200...299:
            return "cloud.bolt.rain"
        case 300...399:
            return "cloud.drizzle"
        case 500...599:
            return "cloud.rain"
        case 600...699:
            return "snow"
        case 700...799:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...899:
            return "cloud"
        default:
            return "cloud"
        }
    }
    
}
