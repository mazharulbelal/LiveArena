

import UIKit

class RadioController: UIViewController {

    
    let PlayView: UIView = {
        let playView = UIView()
        playView.backgroundColor = UIColor.white
        playView.translatesAutoresizingMaskIntoConstraints = false
        return playView
        
    }()
    
    
    
    let mTableView: UITableView = {
        
        let mTableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            mTableView.backgroundColor = UIColor.white
            mTableView.translatesAutoresizingMaskIntoConstraints = false
            mTableView.isScrollEnabled = true
        return mTableView
        
    }()
    
    
    
    
    
    
    
 
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        mTableView.delegate = self
        mTableView.dataSource = self
        
        view.addSubview(mTableView)
        
        
        
        
        let cellNib = UINib(nibName: RadioCell.name, bundle: nil)
        self.mTableView.register(cellNib, forCellReuseIdentifier: RadioCell.name)
        
        
        self.view.backgroundColor = UIColor.gray
        
        
        view.addSubview(PlayView)
        AutoLayout()
        
        
        

    }
    
    func AutoLayout() {
        
       
        PlayView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        PlayView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        PlayView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        PlayView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 90).isActive = true
        
    }
    
    
    
    


}

extension RadioController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: RadioCell.name, for: indexPath)
        
        
        
        return cell
    }
    
}

