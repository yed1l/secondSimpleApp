//
//  Setup+TextFieldDelegate.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit

extension SetupViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.endEditing(true)
        return true
    }
}
