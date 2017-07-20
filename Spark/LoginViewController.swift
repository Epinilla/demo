//
//  LoginViewController.swift
//  Spark
//
//  Created by Emanuel Pinilla on 7/14/17.
//  Copyright © 2017 Spark. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var textFieldLoginEmail: UITextField!
    @IBOutlet weak var textFieldLoginPassword: UITextField!
    
    @IBAction func loginDidTouch(_ sender: UIButton) {
        print(textFieldLoginEmail.text!)
        print(textFieldLoginPassword.text!)
        print("logged in!")
        
    }
    @IBAction func signUpDidTouch(_ sender: UIButton) {
        print("new user created:")
        print(textFieldLoginEmail.text!)
        print(textFieldLoginPassword.text!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

