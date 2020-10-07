//
//  CategorySuggestion.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import Foundation

var userName: String? {
    get {UserDefaults.standard.object(forKey: "userName") as? String}
}

var locationLat: Double? {
    get {UserDefaults.standard.object(forKey: "lastLocationLat") as? Double}
}
var locationLon: Double? {
    get {UserDefaults.standard.object(forKey: "lastLocationLon") as? Double}
}

var startCategories = [
    "Glasses", "Car Keys", "Check gas", "Turn off the lights", "Take pills", "Close the garage", "Wallet", "Umbrella", "Headphones", "Phone charger", "Feed the cat"
]

var finalScreenAdvice: [String: [String]] = [
    "cloud.bolt.rain":["Please, avoid elevated areas (hills, peaks etc.)",
                       "If you hear thunder, move someplace safe!",
                       "Better save that picnic for another day)"],
    "cloud.drizzle":["Do you want to take your umbrella? Just in case)",
                     "Grabbing a raincoat might be useful",
                     "A fresh fruit snack is perfect for day like this"],
    "cloud.rain":["I hope, your umbrella is with you",
                  "Rain-friendly shoes is the best option!",
                  "You might see a rainbow after this)"],
    "snow":["Don't forget to put on a hat!",
            "A pair of gloves would look nice on you!",
            "A cup of hot tea will keep you warm today)"],
    "cloud.fog":["Watch your step!",
                 "Driving a car? Use your headlights, not your brights!",
                 "Walk safe, drive safe. I bet you can do both)"],
    "sun.max":["You would look so cool in sunglasses!",
               "You didn't forget to use sunscreen, did you?)",
               "But you still shine brighter than the sun)"],
    "cloud":["Clouds help you make the best outdoor selfies' background. Try it!",
             "A cup of hot chocolate would make your day much brighter!",
             "Perfect day for being extra-productive. Way to go!"]
]
