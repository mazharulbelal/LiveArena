//
//  UpComingCell.swift
//  LiveArena
//
//  Created by Mazharul Belal on 26/9/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//


import UIKit
import PureLayout



class UpComingCell: UICollectionViewCell {
    
    static let name = "UpComingCell"
    @IBOutlet weak var ContainerView : UIView!
    
    
    var mp3Data: [MP3Category] = []
    {
        
        didSet {
            self.Setup()
        }
    }
    
    
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
         self.mp3Data = MP3Data().upcomingMP3data()
    
        
    }
    
    func Setup() {
        
       
        self.ContainerView.addSubview(mCollectionView)
        self.mCollectionView.configureForAutoLayout()
        self.mCollectionView.autoPinEdgesToSuperviewEdges()
        
        
        
        let cellNib = UINib(nibName: MP3CollectionCell.name, bundle: nil)
        self.mCollectionView.register(cellNib, forCellWithReuseIdentifier: MP3CollectionCell.name)
        
        
        
        
        mCollectionView.delegate = self
        mCollectionView.dataSource = self
        
        
        
    }
    
    
    func getCellSize () -> CGSize {
        let vw = CGFloat(self.frame.width)
        let margins: CGFloat = 10.0 + 10.0
        let gapBetweenItems: CGFloat = 0.0
        let width: CGFloat = vw - margins - gapBetweenItems
        let numberOfItemsPerRow: CGFloat = 3
        return CGSize(width: (width/numberOfItemsPerRow) - 6.8, height: self.frame.height)
    }
    
   
}



extension UpComingCell : UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.getCellSize()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets (top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    }
    
    
    

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mp3Data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MP3CollectionCell.name, for: indexPath) as! MP3CollectionCell
        
        
        let mp3data = self.mp3Data[indexPath.row]
        cell.SongTIitlelabel.text = mp3data.SongTitleData
        cell.PRofileImageView.image = UIImage(named: mp3data.SongImageData)
        
        
        
        return cell
        
    }
    
   
   
   
    
}












