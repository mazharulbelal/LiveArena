//
//  WeatherViewController.swift
//  
//
//  Created by Mazharul Belal on 9/12/19.
//

import UIKit



class WeatherViewController: UIViewController {
    
    
    
    var weatherData : [WeatherCategory] = []
   
    
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
        
        
        self.weatherData = WeatherData().getWeatherData()
        
        mCollectionView.delegate = self
        mCollectionView.dataSource = self
        
        view.addSubview(mCollectionView)
        
       
        let cellNib = UINib(nibName: WeatherViewCell.name, bundle: nil)
        self.mCollectionView.register(cellNib, forCellWithReuseIdentifier: WeatherViewCell.name)
        
        
    }
    
    
    func getCellSize () -> CGSize {
        let vw = CGFloat(self.view.frame.width)
        let margins: CGFloat = 10.0 + 10.0
        let gapBetweenItems: CGFloat = 0.0
        let width: CGFloat = vw - margins - gapBetweenItems
        let numberOfItemsPerRow: CGFloat = 1
        return CGSize(width: (width/numberOfItemsPerRow) - 5.0, height: 210.00)
    }
    
    
    
    
}


  
    
    
extension WeatherViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return weatherData.count
    }
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.getCellSize()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets (top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WeatherViewCell.name, for: indexPath) as! WeatherViewCell
        
         let weatherdata =  self.weatherData[indexPath.row]
        
            cell.dateLabel.text = weatherdata.dateData
            cell.timeData.text = weatherdata.timeData
            cell.TempData.text = weatherdata.TempData
            cell.weathreTitle.text = weatherdata.weathreTitle
            cell.maxWeather.text = String(format:"Max Temperature: \(String(describing: weatherdata.maxWeather!))")
            cell.windSpeed.text = weatherdata.windSpeed
            cell.weatherImage.image = UIImage(named: weatherdata.weatherImage)
        
        
        
        return cell
    }
    
    
    
    
    
    
    
    
}

