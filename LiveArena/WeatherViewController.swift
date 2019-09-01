//
//  WeatherViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 6/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit
import Firebase

class WeatherViewController: UITableViewController {
    
    
        
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action:#selector(addTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(OnLogOutButtonClicked))

     
    }
 
    @objc func addTapped(sender:UIButton) {
        print("pressed")
        
        
        
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(SideMenu(), animated: false, completion: nil)
       
        
        
    }
    
    @objc func OnLogOutButtonClicked() {
        
        print("Logout")
        self.present(ViewController(), animated: true, completion: nil)
        
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print (signOutError)
        }
        
    }

}

  



extension WeatherViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "Hello, World"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Select Row")
        
        let DW = DetailsWeather()
        self.navigationController?.pushViewController(DW, animated: true)
    }
    
    
    
}

