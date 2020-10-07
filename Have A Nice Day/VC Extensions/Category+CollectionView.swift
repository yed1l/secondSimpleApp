//
//  Category+CollectionView.swift
//  Have A Nice Day
//
//  Created by Zharkynuly Yedil on 02.10.2020
//  Copyright © 2020 Zharkynuly Yedil. All rights reserved.
//


import UIKit

//MARK: - Collection View Data Source

extension CategoryViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return startCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "suggestionCell", for: indexPath) as! CategoryCollectionViewCell
        cell.sugLabel.text = startCategories[indexPath.row]
        
        return cell
    }
}

// MARK: - Collection View Delegate
extension CategoryViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        categoryAdded(with: startCategories[indexPath.row])
        startCategories.remove(at: indexPath.row)
        collectionView.reloadData()
    }
}
