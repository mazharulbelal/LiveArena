//
//  InformationCategory.swift
//  LiveArena
//
//  Created by Mazharul Belal on 6/9/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import Foundation

class InformationCatefory

{
    let WeatherSummary:String!
    let IconName: String!
    let CityName :String!
    let MaxTemp:String!
    let MinTemp:String!
    let Timezone:String!
    let WindSpeed:String!
    let SunriseTime:String!
    let SunsetTime:String!
    
    
    
    init(WeatherSummary:String, IconName:String, CityName:String, MaxTemp:String, MinTemp :String, Timezone:String,WindSpeed:String, SunriseTime:String, SunsetTime:String ) {
        
        self.WeatherSummary = WeatherSummary
        self.IconName = IconName
        self.CityName = CityName
        self.MaxTemp = MaxTemp
        self.MinTemp = MinTemp
        self.Timezone = Timezone
        self.WindSpeed = WindSpeed
        self.SunriseTime = SunriseTime
        self.SunsetTime = SunsetTime
        
    }
    
    
    
    
    
}

