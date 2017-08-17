//
//  AppDelegate.swift
//  breakpoint
//
//  Created by Aditya Gunda on 8/16/17.
//  Copyright © 2017 Aditya Gunda. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        //Database.database().isPersistenceEnabled = true 
        
        if Auth.auth().currentUser == nil{
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let authVC = storyboard.instantiateViewController(withIdentifier: "AuthVC")
            window?.makeKeyAndVisible()
            window?.rootViewController?.present(authVC, animated: true, completion: nil)
        } else {
            print("user already LOGGED IN")
        }
        
        return true
    }

 
}

