

import UIKit
import Firebase
import ActionKit

class RadioController: UIViewController {
    
    
    var radioList = [String]()
    
    
    let PlayView: UIView = {
        let playView = UIView()
        playView.backgroundColor = UIColor.white
        playView.translatesAutoresizingMaskIntoConstraints = false
        
        playView.layer.borderWidth = 0.5
        
        
        
        return playView
        
    }()
    
    
    
    
    
    
    let RadioDrashBoard : UIStackView = {
        
        let image = UIImage(named: "Next") as UIImage?
        let NextButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        NextButton.setImage(image, for: .normal)
        NextButton.addControlEvent(.touchUpInside, {
            
            print("NextButton")
            
        })
        
        
        let image2 = UIImage(named: "Play") as UIImage?
        let PlayButton = UIButton(type:  UIButton.ButtonType.custom) as UIButton
        PlayButton.setImage(image2, for: .normal)
        PlayButton.addTarget(self, action: #selector(OnPlayButtonClicked), for: .touchUpInside)
        
            
          
         
            
            
        
    
        
        
        
        
            
            
            
        
        
        let image3 = UIImage(named: "Next") as UIImage?
        let BackButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        BackButton.setImage(image3, for: .normal)
        
        
        
        let stackView = UIStackView(arrangedSubviews: [BackButton,PlayButton,NextButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
        
    } ()
    
    
    var isChecked = true
    
    @objc func OnPlayButtonClicked(sender: UIButton) {
        let Play = UIImage(named: "Play") as UIImage?
        let Pause = UIImage(named: "Pause") as UIImage?
        isChecked = !isChecked
        if isChecked {
            sender.setImage(Play, for: .normal)
        } else {
            sender.setImage(Pause, for: .normal)
        }
    }

    
    
    
    
    
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
        PlayView.addSubview(RadioDrashBoard)
        
        
        
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
        
        
        
        
        RadioDrashBoard.centerXAnchor.constraint(equalTo: PlayView.centerXAnchor).isActive = true
        RadioDrashBoard.topAnchor.constraint(equalTo: PlayView.topAnchor, constant: 15).isActive = true
        RadioDrashBoard.widthAnchor.constraint(equalToConstant: 230).isActive = true
        RadioDrashBoard.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        
        
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


