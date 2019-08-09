//
//  Recovery Account.swift
//  LiveArena
//
//  Created by Mazharul Belal on 8/9/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit

class Recovery_Account: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Recovery Account"
        
        RecoveryButton()
        InputTextFIeld()
        ForGotLabel()
        ImageView()

      
    }
    
    func RecoveryButton() {
    
    let RecoveryButton = UIButton(frame: CGRect(x: 222, y: 589, width: 135, height: 48))
        RecoveryButton.backgroundColor = UIColor(red: 22/255, green: 191/255, blue: 181/255, alpha: 1)
        RecoveryButton.setTitle("Send", for: .normal)
        RecoveryButton.layer.cornerRadius = 10
        RecoveryButton.addTarget(self, action: #selector(OnSendButtonClicked), for: .touchUpInside)
        
        self.view.addSubview(RecoveryButton)
        
        
    

    
    }
    
    // Input Text Field
    
    func InputTextFIeld () {
        
        
        let InputTextFIeld = UITextField(frame: CGRect(x: 32, y: 388, width: 312, height: 55))
            InputTextFIeld.placeholder = " Enter Your Email Address"
            InputTextFIeld.layer.cornerRadius = 8
            InputTextFIeld.layer.borderWidth = 1.0
            InputTextFIeld.layer.borderColor = UIColor.gray.cgColor
        
        
            self.view.addSubview(InputTextFIeld)
    }
    
    
    // Send Button Clicked
    
    @objc func OnSendButtonClicked() {
        
        print("Send")
        
        
    }
    
    // Forgot Password Label
    func ForGotLabel () {
        
        let ForGetLabel = UILabel(frame: CGRect(x: 67, y: 326, width: 242, height: 31))
            ForGetLabel.text = "Forgot Your Password?"
            ForGetLabel.textColor = UIColor.black
            ForGetLabel.textAlignment = .center
            ForGetLabel.font = UIFont(name: "Helvetica", size: 20)
        
            self.view.addSubview(ForGetLabel)
        
        
        
    }
    
    
    // Image View
    
    func ImageView () {
        
        let ImageView = UIImageView(frame: CGRect(x: 118, y: 124, width: 161, height: 161))
            ImageView.image = UIImage(named: "Lock")
        
            self.view.addSubview(ImageView)
    }
   

}
