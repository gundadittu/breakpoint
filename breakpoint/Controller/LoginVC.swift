//
//  LoginVC.swift
//  breakpoint
//
//  Created by Aditya Gunda on 8/16/17.
//  Copyright © 2017 Aditya Gunda. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    @IBAction func signInBtnPressed(_ sender: Any) {
        
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, error) in
                if success {
                    print("successful initial login")
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print("error initial login")
                    print(String(describing: error?.localizedDescription))
                }
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, error) in
                    if success {
                        print("successful register")
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            if success {
                                print("successful second login")
                                self.dismiss(animated: true, completion: nil)
                            } else {
                                print("error second login")
                                print(String(describing: error?.localizedDescription))
                            }
                        })
                    }
                })
            })
        }
        
    }
    @IBAction func closedBtnPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }

}

extension LoginVC: UITextFieldDelegate {
    
}
