//
//  AuthVC.swift
//  breakpoint
//
//  Created by Aditya Gunda on 8/16/17.
//  Copyright © 2017 Aditya Gunda. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    @IBAction func signInWithEmailBtnPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginVC")
           present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleSignInBtnPressed(_ sender: Any) {
    }
    
    @IBAction func facebookSignInBtnPressed(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
