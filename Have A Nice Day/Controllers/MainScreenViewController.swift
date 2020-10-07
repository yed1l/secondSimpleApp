//
//  MainScreenViewController.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit
import CoreData

class MainScreenViewController: UIViewController {
    
    var catArray = [Category]()
    let data = CoreDataMethods()
    
    let impactFeedback = UIImpactFeedbackGenerator(style: .light)
    let notificationFeedback = UINotificationFeedbackGenerator()
    
    var weatherManager = WeatherManager()
    
    @IBOutlet weak var readyButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        catArray = data.loadCategories()
        tableView.delegate = self
        impactFeedback.prepare()
    }
    
    @IBAction func editButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToEdit", sender: self)
    }
    
    @IBAction func readyButtonPressed(_ sender: UIButton) {
        for category in catArray {
            category.done = false
        }
        data.saveCategories()
        notificationFeedback.notificationOccurred(.success)
        performSegue(withIdentifier: "goToFinal", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? FinalViewController else {return}
        weatherManager.delegate = destinationVC.self
        if let lat = locationLat, let lon = locationLon {
            weatherManager.fetchWeather(latitude: lat, longitude: lon)

        }
    }
}
