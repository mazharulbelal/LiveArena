//
//  WeatherViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 6/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class WeatherViewController: UITableViewController {
        
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
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

