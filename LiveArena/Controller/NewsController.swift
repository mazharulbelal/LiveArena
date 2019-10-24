

import UIKit

class NewsController: UIViewController {
    
    
    var mp3Data: [MP3Category] = []
    var mp3RecentData:[MP3Category] = []
    
    
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
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self as? UISearchResultsUpdating
        self.navigationItem.searchController = search
        
        
        
        self.mp3Data = MP3Data().getMP3data()
        self.mp3RecentData = MP3Data().getRecentMP3data()
        
        
        mCollectionView.delegate = self
        mCollectionView.dataSource = self
        
        view.addSubview(mCollectionView)
        
        
        let cellNib = UINib(nibName: NewsCollectionCell.name, bundle: nil)
        self.mCollectionView.register(cellNib, forCellWithReuseIdentifier: NewsCollectionCell.name)
        
        
        
        let HeaderNib = UINib(nibName: NewsHeaderView.name, bundle: nil)
        self.mCollectionView.register(HeaderNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: NewsHeaderView.name)
        
        
        
        let HoldNib = UINib(nibName: RecentNewsCell.name, bundle: nil)
        self.mCollectionView.register(HoldNib, forCellWithReuseIdentifier: RecentNewsCell.name)
        
    }
    
    
    
    func getCellSize () -> CGSize {
        let vw = CGFloat(self.view.frame.width)
        let margins: CGFloat = 10.0 + 10.0
        let gapBetweenItems: CGFloat = 0.0
        let width: CGFloat = vw - margins - gapBetweenItems
        let numberOfItemsPerRow: CGFloat = 1.00
        return CGSize(width: (width/numberOfItemsPerRow) - 6.8, height: 150.0)
    }
    
    
}

extension NewsController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        if section == 0 {
            return 1
        }
            
        else if section == 1{
            return  mp3RecentData.count
            
        }
        
        return mp3Data.count
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        
        
        if let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: NewsHeaderView.name, for: indexPath) as? NewsHeaderView {
            
            if indexPath.section == 0 {
                header.HearTitleLabel.text = "Top News"
                
            }
                
                
            else if indexPath.section == 1 {
                header.HearTitleLabel.text = "Recent News"
                
            }
                
            else {
                header.HearTitleLabel.text = "All News"
            }
            
            return header
        }
        
        
        return UICollectionReusableView.init()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: collectionView.frame.size.width, height: 40.0)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            
            
            
            return CGSize(width: collectionView.frame.width, height: 210)
        }
        
        return self.getCellSize()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets (top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCollectionCell.name, for: indexPath) as! NewsCollectionCell
        let Upcoming = collectionView.dequeueReusableCell(withReuseIdentifier: RecentNewsCell.name, for: indexPath) as! RecentNewsCell
        
        if indexPath.section == 0 {
            
            
            
            return Upcoming
            
        }
            
            
            
        else if indexPath.section == 1 {
            let mp3RecentData = self.mp3RecentData[indexPath.row]
            cell.SongTIitlelabel.text = mp3RecentData.SongTitleData
            cell.PRofileImageView.image = UIImage(named: mp3RecentData.SongImageData)
            
            return cell
        }
        else {
            let mp3data = self.mp3Data[indexPath.row]
            cell.SongTIitlelabel.text = mp3data.SongTitleData
            cell.PRofileImageView.image = UIImage(named: mp3data.SongImageData)
            
            return cell
        }
        
        
        
    }
}

