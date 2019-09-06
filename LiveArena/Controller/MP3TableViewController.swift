//
//  MP3TableViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 7/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class MP3TableViewController: UITableViewController {
    
    var MP3Array = ["Audio 1","Audio 2","Audio 3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

        
    }
    

}

extension MP3TableViewController{
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MP3Array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = MP3Array[indexPath.row]
        
        return cell
    }
    
}
