//
//  Contact.swift
//  contactsapp
//
//  Created by SoftAuthor on 2019-04-20.
//  Copyright © 2019 SoftAuthor. All rights reserved.
//

import Foundation

struct WeatherCategory {
    
    let dateData : String!
    let timeData : String!
    let TempData : String!
    let weathreTitle : String!
    let maxWeather : String!
    let windSpeed : String!
    let weatherImage : String!
    
    
    init(dateData:String, timeData:String, TempData:String, weathreTitle: String, maxWeather:String, windSpeed:String, weatherImage: String ) {
        
        self.dateData = dateData
        self.timeData = timeData
        self.TempData = TempData
        self.weathreTitle = weathreTitle
        self.maxWeather = maxWeather
        self.windSpeed = windSpeed
        self.weatherImage = weatherImage
    }
    
}



    
    
    
    
    
    

