//
//  WeatherViewCell.swift
//  LiveArena
//
//  Created by Mazharul Belal on 21/9/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class WeatherViewCell: UICollectionViewCell {
    
    
    
    static var name = "WeatherViewCell"
    
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
