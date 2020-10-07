//
//  ViewController.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    private var locationManager = CLLocationManager()
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        locationManager.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateButton()
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        if userName != nil {
            performSegue(withIdentifier: "goToMain", sender: self)
        } else {
            performSegue(withIdentifier: "goToSetup", sender: self)
        }
    }
}

