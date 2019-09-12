//
//  ContactAPI.swift
//  contactsapp
//
//  Created by SoftAuthor on 2019-04-20.
//  Copyright © 2019 SoftAuthor. All rights reserved.
//

import Foundation

class WeatherData {
    static func getWeatherData() -> [WeatherCategory]{
        let weatherData = [
            WeatherCategory(name: "Cyclone", jobTitle: "Cyclone", country: "Cyclone"),
            WeatherCategory(name: "rainbow", jobTitle: "rainbow", country: "rainbow"),
            WeatherCategory(name: "rainy-day", jobTitle: "rainy-day", country: "rainy-day"),
            WeatherCategory(name: "Tamilarasi Mohan", jobTitle: "Architect", country: "al"),
            WeatherCategory(name: "snowy", jobTitle: "snowy", country: "snowy"),
            WeatherCategory(name: "windy", jobTitle: "windy", country: "windy"),
            WeatherCategory(name: "Shreya Nithin", jobTitle: "Product Designer", country: "az"),
            
        ]
        return weatherData
    }
}
