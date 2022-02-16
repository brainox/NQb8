//
//  LoginViewController.swift
//  NQb8
//
//  Created by Decagon on 16/02/2022.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
  
    @IBAction func loginTapped (_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print("The error: \(error)")
                } else {
                    print("Successfully logged in")
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }

}
