//
//  Main+TableView.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit

// MARK: - Table View Data Source
extension MainScreenViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let category = catArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainScreenCell", for: indexPath)
        cell.layer.cornerRadius = cell.bounds.height / 2
        cell.layer.borderColor = tableView.backgroundColor?.cgColor
        cell.textLabel?.text = category.item
        cell.accessoryType = category.done == true ? .checkmark : .none
        return cell
    }
}

// MARK: - Table View Delegate
extension MainScreenViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        catArray[indexPath.row].done.toggle()
        impactFeedback.impactOccurred()
        data.saveCategories()
        tableView.reloadRows(at: [indexPath], with: .automatic)
        if catArray.allSatisfy({$0.done}) {
            // readyButton becomes active only if all cells are marked "done"
            notificationFeedback.prepare()
            readyButton.alpha = 1.0
            readyButton.isEnabled = true
        }
    }
}
