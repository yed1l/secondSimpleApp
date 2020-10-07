//
//  Category+TableView.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit
// MARK: - Table View Data Source
extension CategoryViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        cell.textLabel?.text = catArray[indexPath.row].item
        cell.layer.borderColor = tableView.backgroundColor?.cgColor
        return cell
    }
    
    func categoryAdded(with item: String) {
        // Creates a Category object and adds it to the bottom of TableView
        let element = Category(context: data.context)
        element.item = item
        catArray.append(element)
        data.saveCategories()
        let indexPath = IndexPath(row: catArray.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
    }
}

// MARK: - Table View Delegate
extension CategoryViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if let element = catArray[indexPath.row].item {
                startCategories.append(element)
                collectionView.reloadData()
            }
            data.context.delete(catArray[indexPath.row])
            catArray.remove(at: indexPath.row)
            data.saveCategories()
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
