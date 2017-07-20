//
//  ViewController.swift
//  Spark
//
//  Created by Emanuel Pinilla on 7/14/17.
//  Copyright © 2017 Spark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldLoginEmail: UITextField!
    
    @IBOutlet weak var textFieldLoginPassword: UITextField!
    
    
    @IBAction func loginDidTouch(_ sender: UIButton) {
        print(textFieldLoginEmail.text!)
        print(textFieldLoginPassword.text!)
        print("logged in")
        
        FIRAuth.auth()!.signIn(withEmail: textFieldLoginEmail.text!,
                               password: textFieldLoginPassword.text!)

    }
    
    @IBAction func signUpDidTouch(_ sender: UIButton) {
        print(textFieldLoginEmail.text!)
        print(textFieldLoginPassword.text!)
        print("signed up")
        
        let alert = UIAlertController(title: "Register",
                                      message: "Register",
                                      preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save",
                                       style: .default) { action in
                                        
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .default)
        
        alert.addTextField { textEmail in
            textEmail.placeholder = "Enter your email"
        }
        
        alert.addTextField { textPassword in
            textPassword.isSecureTextEntry = true
            textPassword.placeholder = "Enter your password"
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)


    }
    
}
