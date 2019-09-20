//
//  WeatherViewController.swift
//  
//
//  Created by Mazharul Belal on 9/12/19.
//

import UIKit

class WeatherViewController: UIViewController {
    
    let bounds = UIScreen.main.bounds
    
    var WeatherData : [WeatherCategory] = []
    
    let newCollection: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        collection.backgroundColor = UIColor.gray
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.isScrollEnabled = true
        return collection
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        newCollection.delegate = self
        newCollection.dataSource = self
        
        
        newCollection.register(WeatherCell.self, forCellWithReuseIdentifier: WeatherCell.name)
        
        view.addSubview(newCollection)
        
        
    }
    
}

extension WeatherViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = newCollection.dequeueReusableCell(withReuseIdentifier: WeatherCell.name, for: indexPath) as! WeatherCell
        
        cell.dateLabel.text =
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: bounds.width, height: 200)
    }
    
 
    
  
    
    
    
    
   
    
    
}
