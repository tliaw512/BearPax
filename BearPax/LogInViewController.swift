//
//  LogInViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 4/6/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController, UITextFieldDelegate {
 
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // If user has previously signed in, so skip login
        if FIRAuth.auth()?.currentUser != nil {
            self.performSegue(withIdentifier: "loginToMain" , sender: self)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func attemptLogin(_ sender: UIButton) {
        guard let emailText = emailField.text else { return }
        guard let passwordText = passwordField.text else { return }
        
        FIRAuth.auth()?.signIn(withEmail: emailText, password: passwordText)
        {(user, error) in
            if let error = error {
                let alertController = UIAlertController(title: "Log In Failed", message: "Username or password entered incorrectly", preferredStyle: . alert)
                let failAction = UIAlertAction(title: "Try Again", style: .default, handler: nil)
                alertController.addAction(failAction)
                self.present(alertController, animated: true, completion: nil)
            } else {
                self.performSegue(withIdentifier: "loginToMain", sender: self)
            }
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
