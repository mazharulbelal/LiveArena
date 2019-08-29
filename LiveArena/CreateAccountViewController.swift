//
//  CreateAccountViewController.swift
//  LiveArena
//
//  Created by Mazharul Belal on 5/8/19.
//  Copyright © 2019 Mazharul Belal. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class CreateAccountViewController: UIViewController {
    
    var EmailAddress:UITextField!
    var FullName:UITextField!
    var PasswordTextFleld:UITextField!
    var PhoneTextFleld:UITextField!
    var iconClick = true
    var EyeButton: UIButton!
    var EyeON = UIImage(named: "eyeon")
    var EyeOFF = UIImage(named: "eyeoff")
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.title = "Create Account"
      
        
        
        
        MainLogo()
        TextField()
        CreateAccount()
        
    

    }
    
    
    
    
    
    
    func MainLogo(){
        
        let MailLogo = UIImageView(frame: CGRect(x: 132, y: 81, width: 113, height: 113))
        MailLogo.image = UIImage(named: "logo")
        self.view.addSubview(MailLogo)
        

    }
    
    
    
    
    func TextField() {
        
        // Full Name Field
        
        FullName = UITextField(frame: CGRect(x: 41, y: 232, width: 288, height: 46))
        
        FullName.placeholder = "Full Name"
        FullName.layer.borderWidth = 0.25
        FullName.layer.cornerRadius = 10
        FullName.layer.borderColor = UIColor.gray.cgColor
        FullName.autocorrectionType = .no
        FullName.textAlignment = .center
        FullName.autocapitalizationType = .none
        self.view.addSubview(FullName)
        
        
        
       
        // Email Text Field
        
        EmailAddress = UITextField(frame: CGRect(x: 41, y: 288, width: 288, height:46))
        
        EmailAddress.placeholder = "Email Address"
        EmailAddress.layer.borderWidth = 0.25
        EmailAddress.layer.cornerRadius = 10
        EmailAddress.layer.borderColor = UIColor.gray.cgColor
        EmailAddress.autocorrectionType = .no
        EmailAddress.autocapitalizationType = .none
        EmailAddress.textAlignment = .center
        self.view.addSubview(EmailAddress)
        
        
        
      
        EyeButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
        EyeButton.frame = CGRect(x: 280, y: 344, width: 40, height: 40)
        EyeButton.setImage(EyeOFF, for: .normal)
        EyeButton.addTarget(self, action: #selector(OnEyeButtonButtonClicked), for: .touchUpInside)
      //  self.view.addSubview(EyeButton)
        
      
        
        
        
        
        // Password Text Field
        
        PasswordTextFleld = UITextField(frame: CGRect(x: 41, y: 344, width: 288, height: 46))
        
        PasswordTextFleld.placeholder = "Password"
        PasswordTextFleld.layer.borderWidth = 0.25
        PasswordTextFleld.layer.cornerRadius = 10
        PasswordTextFleld.layer.borderColor = UIColor.gray.cgColor
        PasswordTextFleld.autocapitalizationType = .none
        PasswordTextFleld.autocorrectionType = .no
        PasswordTextFleld.isSecureTextEntry = true
        PasswordTextFleld.textAlignment = .center
        
        self.view.addSubview(PasswordTextFleld)
        self.view.addSubview(EyeButton)
        
        
        
        // Phone Text Field
        
        
        PhoneTextFleld = UITextField(frame: CGRect(x: 41, y: 400, width: 288, height:46))
        
        PhoneTextFleld.placeholder = "Phone"
        PhoneTextFleld.layer.borderWidth = 0.25
        PhoneTextFleld.layer.cornerRadius = 10
        PhoneTextFleld.layer.borderColor = UIColor.gray.cgColor
        PhoneTextFleld.autocorrectionType = .no
        PhoneTextFleld.autocapitalizationType = .none
        PhoneTextFleld.textAlignment = .center
        
        self.view.addSubview(PhoneTextFleld)
        
        
        
        
    }
    
    
    
    func CreateAccount () {
        
        let CreateAccount = UIButton(frame: CGRect(x: 49, y: 510, width: 280, height: 53))
        CreateAccount.backgroundColor = UIColor(red: 30/255, green: 138/255, blue: 0/255, alpha: 1)
        
        
        CreateAccount.setTitle("Create Account", for: .normal)
        CreateAccount.tintColor = UIColor.white
        CreateAccount.addTarget(self, action: #selector(onCreateAccountButtonClicked), for: .touchUpInside)
        self.view.addSubview(CreateAccount)
        
        
    }
    

    
    
    
    
@objc func onCreateAccountButtonClicked()
    {
        print("Create Account")
        
        
        
        
        
        //first take the email and password from the views
        let email = EmailAddress.text!
        let password = PasswordTextFleld.text!
        
        
      
        
        Auth.auth().createUser(withEmail: email, password: password) {(user, error) in
            if user != nil {
                
                
                // User Regiestration
                
                var ref: DatabaseReference?
                ref = Database.database().reference()
                let post : [ String : AnyObject] = ["Full Name" : self.FullName.text! as AnyObject ,"Email Address" : self.EmailAddress.text! as AnyObject, "Phone Number": self.PhoneTextFleld.text! as AnyObject ]
                
                ref?.child("UserInformation").child(self.PhoneTextFleld.text!).setValue(post)
                

                
                
                let alertController = UIAlertController(title: "Create Sucessfully", message: "Your account has been successfully created. You can Login Now", preferredStyle: .alert)
                
                let action1 = UIAlertAction(title: "Press To Login", style: .default) { (action:UIAlertAction) in
                    print("...");
                }
                
              
    
                
                
                alertController.addAction(action1)
               
                self.present(alertController, animated: true, completion: nil)
                
                
          
                
                
                
                
            }
                
                
            if error != nil {
               
                
                
                let alertController = UIAlertController(title: "Opps!", message: "something went wrong", preferredStyle: .alert)
                
                let action1 = UIAlertAction(title: "Dismiss", style: .cancel) { (action:UIAlertAction) in
                  
                }
                
                
                
                
                
                alertController.addAction(action1)
                
                self.present(alertController, animated: true, completion: nil)
                
                
                
            }
        }

        
        
    }
    
    
    @objc func OnEyeButtonButtonClicked()
    {
        print("Eye Button")
        
        
        if(iconClick == true) {
           
            PasswordTextFleld.isSecureTextEntry = false
              EyeButton.setImage(EyeOFF, for: .normal)
            
        } else {
            PasswordTextFleld.isSecureTextEntry = true
              EyeButton.setImage(EyeON, for: .normal)
        }
        
        iconClick = !iconClick
        
    }
    
}
    
    
    

