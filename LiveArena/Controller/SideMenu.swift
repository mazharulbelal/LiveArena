//
//  WeatherViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 6/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit
import Firebase

class SideMenu: UIViewController {
    
    var ProfileImageView : UIImageView!
    var ListTavleView :UITableView!
    var NameLabel: UILabel!
    var LocationLabel: UILabel!
    var ProfileImage : UIImage!
    
    var MenuName = ["Change Profile Picture","Locations","Favorite List","Change Password", "Contact","Logout"]
    
    
    
    

   override func viewDidLoad() {
        super.viewDidLoad()
    self.view.backgroundColor = UIColor.gray
    
    
    
    Design()
    
        

    
        
        
    }
    
    func Design () {
        
        let ProfileImageView = UIImageView(frame: CGRect(x: 116, y: 85, width: 150, height: 150))
        ProfileImageView.image = UIImage(named: "steve")
        ProfileImageView.layer.cornerRadius = 75
        ProfileImageView.clipsToBounds = true
        ProfileImageView.layer.borderWidth = 3
        ProfileImageView.layer.borderColor = UIColor.red.cgColor
        ProfileImageView.layer.borderColor = UIColor.white.cgColor
        self.view.addSubview(ProfileImageView)
        
        
        
        
        let bounds = UIScreen.main.bounds
        ListTavleView = UITableView(frame: CGRect(x: 0, y: 300, width:bounds.size.width, height: bounds.size.height))
        self.view.addSubview(ListTavleView)
        
//
//        NameLabel = UILabel(frame: CGRect(x: <#T##Int#>, y: <#T##Int#>, width: <#T##Int#>, height: <#T##Int#>))
//        NameLabel.text = "Belal"
//        NameLabel.textAlignment = .center
        
        
        
        
        
    }
       
        
        
        
}
    
    
    
    
  
