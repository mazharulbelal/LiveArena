//
//  MP3TableViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 7/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class MP3TableViewController: UIViewController {
    
    
    var mp3Data: [MP3Category] = []
    
    
    let mCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), collectionViewLayout: layout)
        
        layout.scrollDirection = .vertical
        collection.backgroundColor = UIColor.white
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.isScrollEnabled = true
        return collection
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mp3Data = MP3Data().getMP3data()
        mCollectionView.delegate = self
        mCollectionView.dataSource = self
        
        view.addSubview(mCollectionView)
        
        
        let cellNib = UINib(nibName: MP3CollectionCell.name, bundle: nil)
        self.mCollectionView.register(cellNib, forCellWithReuseIdentifier: MP3CollectionCell.name)
        
        
        
        
        
    }
    
    
    
    func getCellSize () -> CGSize {
    let vw = CGFloat(self.view.frame.width)
    let margins: CGFloat = 10.0 + 10.0
    let gapBetweenItems: CGFloat = 0.0
    let width: CGFloat = vw - margins - gapBetweenItems
    let numberOfItemsPerRow: CGFloat = 2.00
    return CGSize(width: (width/numberOfItemsPerRow) - 5.0, height: 192.0)
    }


}

extension MP3TableViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return mp3Data.count
    }
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.getCellSize()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets (top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MP3CollectionCell.name, for: indexPath) as! MP3CollectionCell
        
        
        let mp3data = self.mp3Data[indexPath.row]
        
        cell.SongTIitlelabel.text = mp3data.SongTitleData
        cell.PRofileImageView.image = UIImage(named: mp3data.SongImageData)
        
    return cell
    }
}
