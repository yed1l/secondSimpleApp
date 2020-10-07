//
//  SetupViewController.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//

import UIKit
import CoreLocation

class SetupViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        nameTextField.delegate = self
    }
    
    @IBAction func niceButtonPressed(_ sender: UIButton) {
        if let name = nameTextField.text {
            if name != "" {
                UserDefaults.standard.set(name, forKey: "userName")
                performSegue(withIdentifier: "goToCategories", sender: self)
            } else {
                nameTextField.placeholder = "Incorrect Name. Try Again!"
            }
        }
    }
}
