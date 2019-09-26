//
//  HolderCell.swift
//  LiveArena
//
//  Created by Mazharul Belal on 9/26/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class HolderCell: UICollectionViewCell {
    
    static let name = "HolderCell"
    
    
    let mCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), collectionViewLayout: layout)
        
        layout.scrollDirection = .horizontal
        collection.backgroundColor = UIColor.white
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.isScrollEnabled = true
        return collection
    }()
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.addSubview(mCollectionView)
    }

}
