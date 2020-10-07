//
//  Core Data Methods.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit
import CoreData

struct CoreDataMethods {
    
// Defines context and provides methods for saving / retrieving user data (categories) from CoreData model
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    func saveCategories() {
        do {
            try context.save()
        } catch {
            print ("Error saving context\(error)")
        }
    }

    func loadCategories() -> [Category] {
        let request: NSFetchRequest<Category> = Category.fetchRequest()
        var catArray: [Category] = []
        do {
            catArray = try context.fetch(request)
        } catch {
            print("Error loading from context \(error)")
        }
        return catArray
    }
}
