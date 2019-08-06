//
//  TabBar.swift
//  LiveArena
//
//  Created by Mazharul Belal on 7/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class TabBar: UITableViewController {
    
    let First = WeatherViewController()
    let Secound = MP3TableViewController()
    let Third = RadioController()
    
    
    let tabBarCnt = UITabBarController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "TabBar"
       createTabBarController()


    }
    
    
    func createTabBarController() {
        
        let firstVc = WeatherViewController()
            firstVc.title = "First"
            firstVc.tabBarItem = UITabBarItem.init(title: "Weather", image: UIImage(named: "Weather"), tag: 0)
        
        
        
        let secondVc = MP3TableViewController()
            secondVc.title = "Second"
        
        secondVc.tabBarItem = UITabBarItem.init(title: "MP3", image: UIImage(named: "MP3"), tag: 1)
        
        
        
        
        let thirdVc = MP3TableViewController()
            thirdVc.title = "Second"
        
            thirdVc.tabBarItem = UITabBarItem.init(title: "Radio", image: UIImage(named: "Radio"), tag: 2)
        
        
        
        
        let controllerArray = [firstVc, secondVc, thirdVc]
        tabBarCnt.viewControllers = controllerArray.map{ UINavigationController.init(rootViewController: $0)}
        
        self.view.addSubview(tabBarCnt.view)
    }

}
