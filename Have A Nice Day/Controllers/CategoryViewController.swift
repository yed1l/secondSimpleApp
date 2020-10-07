//
//  CategoryViewController.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit
import CoreData

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    let data = CoreDataMethods()
    var catArray = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catArray = data.loadCategories()
        textField.delegate = self
        tableView.delegate = self
        textLabel.text = "Hello, \(userName ?? "User")!"
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        textField.resignFirstResponder()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "setupFinished", sender: self)
    }
}
