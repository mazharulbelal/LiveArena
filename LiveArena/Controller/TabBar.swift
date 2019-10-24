//
//  TabBar.swift
//  LiveArena
//
//  Created by Mazharul Belal on 7/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class TabBar: UITabBarController {
    
    let First = WeatherViewController()
    let Secound = MP3Controller()
    let Third = RadioController()
    
    
    let tabBarCnt = UITabBarController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "TabBar"
       createTabBarController()
        


    }
    
    
    func createTabBarController() {
        
        let firstVc = WeatherViewController()
            firstVc.title = "Weather"
            firstVc.tabBarItem = UITabBarItem.init(title: "Weather", image: UIImage(named: "Weather"), tag: 0)
        
        
        
        let secondVc = MP3Controller()
            secondVc.title = "MP3 Player"
            secondVc.tabBarItem = UITabBarItem.init(title: "MP3", image: UIImage(named: "MP3"), tag: 1)
        
        
        
        
        let thirdVc = RadioController()
            thirdVc.title = "Radio"
            thirdVc.tabBarItem = UITabBarItem.init(title: "Radio", image: UIImage(named: "Radio"), tag: 2)
        
        
        let FourdVc = NewsController()
        FourdVc.title = "News"
        FourdVc.tabBarItem = UITabBarItem.init(title: "News", image: UIImage(named: "newspaper"), tag: 3)
        
        
        
        
        let controllerArray = [firstVc, FourdVc, secondVc, thirdVc]
        tabBarCnt.viewControllers = controllerArray.map{ UINavigationController.init(rootViewController: $0)}
        
        
        
        self.tabBarCnt.tabBar.backgroundColor = UIColor.gray
        self.tabBarCnt.tabBar.tintColor = UIColor.red
        self.view.addSubview(tabBarCnt.view)
    }

}
