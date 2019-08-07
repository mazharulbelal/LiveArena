//
//  ViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 5/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Live Arena"
        
        print("Working...")
        
        MainLogo()
        LoginLogoStack()
        EmailButton()
        AlreadyButton()
        LoginTextField()
        HelpButton()
        SkipButton()
        HelpButton()
        
        
        
        
        
        
    }
    
    
    
    // Top Logo
    func MainLogo () {
        
        let MailLogo = UIImageView(frame: CGRect(x: 132, y: 81, width: 113, height: 113))
        MailLogo.image = UIImage(named: "logo")
        self.view.addSubview(MailLogo)
        
        
        
        
    }
    
    
    
    
    
    
    // Email Text Field
    
    func LoginTextField () {
        
        let EmailTextFleld = UITextField(frame: CGRect(x: 44, y: 264, width: 288, height: 46))
        
        EmailTextFleld.placeholder = " Email or Phone"
        EmailTextFleld.layer.borderWidth = 0.25
        EmailTextFleld.layer.cornerRadius = 10
        EmailTextFleld.layer.borderColor = UIColor.gray.cgColor
        self.view.addSubview(EmailTextFleld)
        
        
        
        
        // Password Text Field
        
        
        let PasswordTextFleld = UITextField(frame: CGRect(x: 44, y: 320, width: 288, height:46))
        
        PasswordTextFleld.placeholder = " Password"
        PasswordTextFleld.layer.borderWidth = 0.25
        PasswordTextFleld.layer.cornerRadius = 10
        PasswordTextFleld.layer.borderColor = UIColor.gray.cgColor
        self.view.addSubview(PasswordTextFleld)
        
        
        
        
    }
    
    
    
    
    // Social Media Login Button Design
    
    func LoginLogoStack(){
        
        let image = UIImage(named: "Facebook") as UIImage?
        let FacebookButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        FacebookButton.setImage(image, for: .normal)
        FacebookButton.addTarget(self, action: #selector(OnFaceBookButtonClicked), for: .touchUpInside)
        
        
        
        
        
        
        let image2 = UIImage(named: "Twitter") as UIImage?
        let TwitterButton = UIButton(type:  UIButton.ButtonType.custom) as UIButton
        TwitterButton.setImage(image2, for: .normal)
        TwitterButton.addTarget(self, action: #selector(OnTwitterButtonClicked), for: .touchUpInside)
        
        
        
        
        
        
        let image3 = UIImage(named: "Google") as UIImage?
        let GoogleButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        GoogleButton.setImage(image3, for: .normal)
        GoogleButton.addTarget(self, action: #selector(OnGoogleButtonClicked), for: .touchUpInside)
        
        
        
        let stackView = UIStackView(arrangedSubviews: [FacebookButton,GoogleButton,TwitterButton])
        stackView.frame = CGRect(x: 73, y: 479, width: 230, height: 60)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        self.view.addSubview(stackView)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    // Email Button design
    
    
    func EmailButton () {
        
        let EmailButton = UIButton(frame: CGRect(x: 48, y: 397, width: 280, height: 53))
        EmailButton.backgroundColor = UIColor(red: 30/255, green: 138/255, blue: 0/255, alpha: 1)
        
        
        EmailButton.setTitle("Login", for: .normal)
        EmailButton.tintColor = UIColor.white
        EmailButton.addTarget(self, action: #selector(onEmailButtonClicked), for: .touchUpInside)
        self.view.addSubview(EmailButton)
        
        
    }
    
    // Already Button design
    
    func AlreadyButton () {
        
        let AlreadyButton = UIButton(frame: CGRect(x: 119, y: 593, width: 138, height: 38))
        AlreadyButton.setTitle("Sign up for account", for: .normal)
        AlreadyButton.setTitleColor(.black, for: .normal)
        AlreadyButton.titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        AlreadyButton.addTarget(self, action: #selector(OnAlreadyBookButtonClicked), for: .touchUpInside)
        self.view.addSubview(AlreadyButton)
        
        
    }
    
    
    
    // Help Button
    
    func HelpButton(){
        
        let image = UIImage(named: "help") as UIImage?
        let helpButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        helpButton.frame = CGRect(x: 18, y: 613, width: 38, height: 38)
        helpButton.setImage(image, for: .normal)
        helpButton.addTarget(self, action: #selector(OnHelpButtonClicked), for: .touchUpInside)
        self.view.addSubview(helpButton)
        
        
    }
    
    
    // Skip Button
    
    
    func SkipButton() {
        
        let image = UIImage(named: "skip") as UIImage?
        let SkipButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        SkipButton.frame = CGRect(x: 315, y: 613, width: 38, height: 38)
        SkipButton.setImage(image, for: .normal)
        SkipButton.addTarget(self, action: #selector(OnSkipButtonClicked), for: .touchUpInside)
        self.view.addSubview(SkipButton)
    }
    
    
    
    
    @objc func OnFaceBookButtonClicked (){
        
        print("Facebook Button")
    }
    
    
    @objc func OnTwitterButtonClicked () {
        
        print("Twitter Button ")
    }
    
    
    @objc func OnGoogleButtonClicked (){
        print("Google Button")
        
        
    }
    
    @objc func onEmailButtonClicked () {
        print("Email Button..")
        
    }
    
    @objc func OnAlreadyBookButtonClicked(){
        
        let newViewController = CreateAccountViewController()
        self.navigationController?.pushViewController(newViewController, animated: true)
        
    }
    
    
    @objc func OnSkipButtonClicked (){
        
        print("Skip Button")
        
        present(TabBar(), animated: true, completion: nil)
        
    }
    
    
    @objc func OnHelpButtonClicked(){
        print("Help Button")
        
    }
    
    
    
    
    
}

