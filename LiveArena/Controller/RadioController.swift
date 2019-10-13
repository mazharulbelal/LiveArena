

import UIKit
import Firebase

class RadioController: UIViewController {

    
    var radioList = [String]()
    
    
    let PlayView: UIView = {
        let playView = UIView()
        playView.backgroundColor = UIColor(white: 1, alpha: 0.7)
        playView.translatesAutoresizingMaskIntoConstraints = false
        
        playView.layer.borderWidth = 0.5
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
        
        print(radioList)
        
        self.fetchRadioData()
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
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: RadioCell.name, for: indexPath)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 87
    }
    
    func fetchRadioData() {
        
        Firestore.firestore().collection("RadioList")
        
            .addSnapshotListener{snapshot, error in
                if let snap = snapshot?.documents {
                    print("#### Start Point ####")
                    for doc in snap {
                        var Data = doc.data()
                     
                        
                        
                        print ("Start")
                    }
                    
                    print("#### End Point ####")
                }
                
        }
        
    }
    
    
    
}

