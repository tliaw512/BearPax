//
//  SignInViewController.swift
//  BearPax
//
//  Created by Tiffany Liaw on 4/6/17.
//  Copyright © 2017 Tiffany Liaw. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func attemptSignUp(_ sender: UIButton) {
        guard let email = emailField.text else { return }
        guard let password = passwordField.text else { return }
        guard let name = userNameField.text else { return }
        
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion:
            { (user, error) in
                if let error = error {
                    let alertController = UIAlertController(title: "Sign Up Failed", message: error as? String, preferredStyle: .alert)
                    let failAction = UIAlertAction(title: "Try Again", style: .default, handler: nil)
                    alertController.addAction(failAction)
                    self.present(alertController, animated: true, completion: nil)
                } else {
                    let changeRequest = user!.profileChangeRequest()
                    changeRequest.displayName = name
                    changeRequest.commitChanges(completion: {(err) in
                        if let err = err {
                            let alert = UIAlertController(title: "Sign Up Failed!", message: err as? String, preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        } else {
                            self.performSegue(withIdentifier: "signupToMain", sender: self)
                        }
                    })
                }
        })
    }

    
    

}
