//
//  ContactAPI.swift
//  contactsapp
//
//  Created by SoftAuthor on 2019-04-20.
//  Copyright © 2019 SoftAuthor. All rights reserved.
//

import Foundation

class WeatherData {
    
    
    func getWeatherData() -> [WeatherCategory]{
        
        let dhakaCity = WeatherCategory(dateData: "Sat.Sep.18 ", timeData: "18:33", TempData: "29°", weathreTitle: "Partly Cloudy", maxWeather: "35°", windSpeed: "Wind:E, 7 km/h", weatherImage: "rainy-day")
        
        let pabnaCity = WeatherCategory(dateData: "Sun.Mar.19 ", timeData: "11:33", TempData: "12°", weathreTitle: "Cloudy", maxWeather: "29°", windSpeed: "Wind:E, 7 km/h", weatherImage: "snowy")
        
        let kustiaCity = WeatherCategory(dateData: "Fri.Sep.18 ", timeData: "18:33", TempData: "29°", weathreTitle: "Partly Cloudy", maxWeather: "35°", windSpeed: "Wind:E, 11 km/h", weatherImage: "snowy")
        
        let tangailCity = WeatherCategory(dateData: "Thu.Jan.19 ", timeData: "11:33", TempData: "19°", weathreTitle: "Sunny", maxWeather: "39°", windSpeed: "Wind:E, 2 km/h", weatherImage: "rainbow")
        let bograCity = WeatherCategory(dateData: "Sat.Feb.12 ", timeData: "18:33", TempData: "15°", weathreTitle: "Rain", maxWeather: "35°", windSpeed: "Wind:E, 18 km/h", weatherImage: "rainy-day")
        let rajshahiCity = WeatherCategory(dateData: "Sun.Sep.17 ", timeData: "10:33", TempData: "12°", weathreTitle: "windu", maxWeather: "29°", windSpeed: "Wind:E, 6 km/h", weatherImage: "snowy")
        
        
        
        return [dhakaCity,pabnaCity,kustiaCity,tangailCity,bograCity,rajshahiCity]
        
        
        
        
        
      
    }
    
    
}
