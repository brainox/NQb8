//
//  RegisterViewController.swift
//  NQb8
//
//  Created by Decagon on 16/02/2022.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func didTapRegister (_ sender: UIButton) {
        if let email = emailTF.text, let password = passwordTF.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    print("succesfully signed up")
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }


}
