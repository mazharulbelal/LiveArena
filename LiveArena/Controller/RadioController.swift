

import UIKit

class RadioController: UITableViewController {
    
    var RadioList = ["Radio - 1","Radio - 2", "Radio - 3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

    }


}


extension RadioController{
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RadioList.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = RadioList[indexPath.row]
        
        return cell
    }
    
}
