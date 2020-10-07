//
//  Category+TextFieldDelegate.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//

import UIKit

extension CategoryViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Checks textField before adding to TableView
        if let item = textField.text {
            if item != "" {
                categoryAdded(with: item)
                textField.placeholder = "Something else?"
                textField.text = ""
            } else {
                textField.placeholder = "Nothing to add..."
            }
        }
    }
}
