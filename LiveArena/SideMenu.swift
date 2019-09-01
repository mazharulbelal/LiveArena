//
//  WeatherViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 6/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit
import Firebase

class SideMenu: UITableViewController {
    
    
    var MenuName = ["Profile Picture","Name","Locations","Favorite List","Change Password","Theme","Language", "Contact","Logoout"]

    
    
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
       
        
       
        
        
        
    }
    
    
    
    
  
    
}





extension SideMenu {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuName.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = MenuName[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print()
        
        
        
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        self.dismiss(animated: false, completion: nil)
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
}


