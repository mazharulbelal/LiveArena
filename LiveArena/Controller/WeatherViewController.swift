//
//  WeatherViewController.swift
//  
//
//  Created by Mazharul Belal on 9/12/19.
//

import Foundation
import UIKit

class WeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let CastData = WeatherData.getWeatherData()
    let contactsTableView = UITableView()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         navigationItem.title = "Weather"
        view.backgroundColor = .white
        view.addSubview(contactsTableView)
        
        contactsTableView.translatesAutoresizingMaskIntoConstraints = false
        contactsTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
        contactsTableView.leftAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leftAnchor).isActive = true
        contactsTableView.rightAnchor.constraint(equalTo:view.safeAreaLayoutGuide.rightAnchor).isActive = true
        contactsTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
        contactsTableView.register(WeatherCell.self, forCellReuseIdentifier: "WeatherCell")
        
        
        
        
       
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CastData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        
        cell.contact = CastData[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    
}
