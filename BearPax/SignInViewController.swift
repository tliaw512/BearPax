//
//  SignInViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 4/6/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func attemptSignUp(_ sender: UIButton) {
        
    }
    
    

}
