//
//  ViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 5/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//


import UIKit
import Firebase
import ActionKit

class ViewController: UIViewController {
    
    
override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor.white
        self.title = "Live Arena"
        
        
        
        view.addSubview(MainLogo)
        view.addSubview(EmailTextField)
        view.addSubview(PasswordTextField)
        view.addSubview(EmailButton)
        view.addSubview(AlreadyButton)
        view.addSubview(SocialMediaLogin)
        view.addSubview(HelpButton)
        view.addSubview(SkipButton)
        AutoLayout()
        
    }
    
    
   
    
    
    let MainLogo: UIImageView = {
    let mainLogo = UIImageView()
        mainLogo.image = UIImage(named: "logo")
        mainLogo.translatesAutoresizingMaskIntoConstraints = false
        return mainLogo
        
    }()
    
    
    
        let EmailTextField : UITextField =  {
        let emailTextFleld = UITextField()
            emailTextFleld.placeholder = "Email or Phone"
            emailTextFleld.layer.borderWidth = 0.25
            emailTextFleld.layer.cornerRadius = 10
            emailTextFleld.layer.borderColor = UIColor.gray.cgColor
            emailTextFleld.autocorrectionType = .no
            emailTextFleld.autocapitalizationType = .none
            emailTextFleld.textAlignment = .center
            emailTextFleld.translatesAutoresizingMaskIntoConstraints = false
   
          return emailTextFleld
   
        }()
    
    
    
    
    let PasswordTextField : UITextField = {
        
        let passwordTextFleld = UITextField()
        passwordTextFleld.placeholder = "Password"
        passwordTextFleld.layer.borderWidth = 0.25
        passwordTextFleld.layer.cornerRadius = 10
        passwordTextFleld.autocorrectionType = .no
        passwordTextFleld.autocapitalizationType = .none
        passwordTextFleld.textAlignment = .center
        passwordTextFleld.isSecureTextEntry = true
        passwordTextFleld.layer.borderColor = UIColor.gray.cgColor
        passwordTextFleld.translatesAutoresizingMaskIntoConstraints = false
        
        return passwordTextFleld
        
    }()
    
    
    
    
    
    
    
    
    let EmailButton : UIButton = {
        
        let emailButton = UIButton()
            emailButton.backgroundColor = UIColor(red: 30/255, green: 138/255, blue: 0/255, alpha: 1)
            emailButton.setTitle("Login", for: .normal)
            emailButton.tintColor = UIColor.white
            emailButton.addTarget(self, action: #selector(onEmailButtonClicked), for: .touchUpInside)
            emailButton.translatesAutoresizingMaskIntoConstraints = false
            return emailButton
        
    }()
    
    
    
    
    
    let SocialMediaLogin : UIStackView = {
        
        let image = UIImage(named: "Facebook") as UIImage?
        let FacebookButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        FacebookButton.setImage(image, for: .normal)
        FacebookButton.addControlEvent(.touchUpInside, {
            
            print("facebook")
            
        })
        
        
        let image2 = UIImage(named: "Twitter") as UIImage?
        let TwitterButton = UIButton(type:  UIButton.ButtonType.custom) as UIButton
        TwitterButton.setImage(image2, for: .normal)
        TwitterButton.addTarget(self, action: #selector(OnTwitterButtonClicked), for: .touchUpInside)
        
        
        let image3 = UIImage(named: "Google") as UIImage?
        let GoogleButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        GoogleButton.setImage(image3, for: .normal)
        GoogleButton.addTarget(self, action: #selector(OnGoogleButtonClicked), for: .touchUpInside)
        
        
        let stackView = UIStackView(arrangedSubviews: [FacebookButton,GoogleButton,TwitterButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
        
    } ()
    
    
    
    
    
    
    
    let AlreadyButton : UIButton = {
        let alreadyButton = UIButton()
        alreadyButton.setTitle("Sign up for account", for: .normal)
        alreadyButton.setTitleColor(.black, for: .normal)
        alreadyButton.titleLabel?.font = UIFont(name: "Helvetica", size: 14)
        alreadyButton.addTarget(self, action: #selector(OnAlreadyBookButtonClicked), for: .touchUpInside)
        alreadyButton.translatesAutoresizingMaskIntoConstraints = false
        
        return alreadyButton
    }()
    
    
    
    
    
    
    
    let HelpButton : UIButton = {
        
        let image = UIImage(named: "help") as UIImage?
        let helpButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        helpButton.setImage(image, for: .normal)
        helpButton.addTarget(self, action: #selector(OnHelpButtonClicked), for: .touchUpInside)
        helpButton.translatesAutoresizingMaskIntoConstraints = false
        
        return helpButton
        
    }()
    
    
    
    
    let SkipButton : UIButton = {
        
        let image = UIImage(named: "skip") as UIImage?
        let skipButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        skipButton.setImage(image, for: .normal)
        skipButton.addTarget(self, action: #selector(OnSkipButtonClicked), for: .touchUpInside)
        skipButton.translatesAutoresizingMaskIntoConstraints = false
        
        return skipButton
    }()
    
    
    
    
    
    
    
    
    
    
    func AutoLayout()
    
    {
        
        
        MainLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        MainLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        MainLogo.widthAnchor.constraint(equalToConstant: 113).isActive = true
        MainLogo.heightAnchor.constraint(equalToConstant: 113).isActive = true
        
        
        
        EmailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        EmailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        EmailTextField.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 30).isActive = true
        EmailTextField.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -30).isActive = true
        EmailTextField.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
        
        PasswordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        PasswordTextField.topAnchor.constraint(equalTo: EmailTextField.bottomAnchor, constant: 10).isActive = true
        PasswordTextField.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 30).isActive = true
        PasswordTextField.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -30).isActive = true
        PasswordTextField.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
        
        
        EmailButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        EmailButton.topAnchor.constraint(equalTo: PasswordTextField.bottomAnchor, constant: 10).isActive = true
        EmailButton.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 30).isActive = true
        EmailButton.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -30).isActive = true
        EmailButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
        
        
        SocialMediaLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        SocialMediaLogin.topAnchor.constraint(equalTo: EmailButton.bottomAnchor, constant: 10).isActive = true
        SocialMediaLogin.widthAnchor.constraint(equalToConstant: 230).isActive = true
        SocialMediaLogin.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        
        
        
       
        
        AlreadyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        AlreadyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        AlreadyButton.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 33).isActive = true
        AlreadyButton.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -33).isActive = true
        AlreadyButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        AlreadyButton.widthAnchor.constraint(equalToConstant: 230).isActive = true
        
        
        
        
       
        HelpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15).isActive = true
        HelpButton.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 15).isActive = true
        HelpButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
        HelpButton.widthAnchor.constraint(equalToConstant: 38).isActive = true
        
        
        SkipButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15).isActive = true
        SkipButton.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -15).isActive = true
        SkipButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
        SkipButton.widthAnchor.constraint(equalToConstant: 38).isActive = true
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    @objc func OnSkipButtonClicked (){
        
        print("Skip Button")
        
        present(TabBar(), animated: true, completion: nil)
        
    }
    
    
    
    @objc func OnHelpButtonClicked(){
        print("Help Button")
        
        
        
        
        let alert = UIAlertController(title: "Get Help",
                                      message: "Please select one option to proceed",
                                      preferredStyle: .actionSheet)
        
        
        
        let EmailAction = UIAlertAction(title: "Forgot Your Email ID?",
                                        style: .destructive) { (action) in
                                            // Respond to user selection of the action
                                            print("....")
                                            
        }
        
        
        let PasswordAction = UIAlertAction(title: "Forgot Your Password?", style: .destructive) { (action) in
            
            let RecoveryView = Recovery_Account()
            self.navigationController?.pushViewController(RecoveryView, animated: true)
            
            
        }
        
        
        let ContactAction = UIAlertAction(title: "Contact Us", style: .destructive) { (action) in
            
            
            
            
        }
        
        
        
        
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel) { (action) in
                                            // Respond to user selection of the action
        }
        
        
        alert.addAction(EmailAction)
        alert.addAction(PasswordAction)
        alert.addAction(ContactAction)
        alert.addAction(cancelAction)
        
        
        
        
        self.present(alert, animated: true) {
            // The alert was presented
        }
        
        
        
        
        
    }
    
    
    
    
    
 
    
    @objc func OnTwitterButtonClicked () {
        
        print("Twitter Button ")
    }
    
    
    @objc func OnGoogleButtonClicked (){
        print("Google Button")
        
        
    }
    
    
    
    
    
    
    @objc func OnAlreadyBookButtonClicked(){
        
        let newViewController = CreateAccountViewController()
        self.navigationController?.pushViewController(newViewController, animated: true)
        
    
    }
    
    
    
    @objc func onEmailButtonClicked () {
        
        
        
        
        Auth.auth().signIn(withEmail: self.EmailTextField.text!, password: self.PasswordTextField.text!) {(user, error) in
            if user != nil {
                
                self.present(TabBar(), animated: true, completion: nil)
            }
            if error != nil {
                
                
                let alertController = UIAlertController(title: "Opps!", message: "something went wrong", preferredStyle: .alert)
                
                let action1 = UIAlertAction(title: "Dismiss", style: .cancel) { (action:UIAlertAction) in
                    
                }
                
                
                
                
                
                alertController.addAction(action1)
                
                self.present(alertController, animated: true, completion: nil)
                
                
                print(":(",error)
            }
            
            
            
            
            
        }
        
        
        
        
        
    }
    
    
    
    
    
    
    
    

}
