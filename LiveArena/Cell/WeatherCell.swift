//
//  WeatherCell.swift
//  LiveArena
//
//  Created by Mazharul Belal on 20/9/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class WeatherCell: UICollectionViewCell {
    
     static let name = "WeatherCell"
    
    @IBOutlet weak var backView : UIView!
    @IBOutlet weak var dateLabel : UILabel!
    @IBOutlet weak var timeData : UILabel!
    @IBOutlet weak var TempData : UILabel!
    @IBOutlet weak var weathreTitle : UILabel!
    @IBOutlet weak var maxWeather : UILabel!
    @IBOutlet weak var windSpeed : UILabel!
    @IBOutlet weak var weatherImage : UILabel!
    
    
   
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
