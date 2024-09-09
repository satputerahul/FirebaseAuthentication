//
//  AppDelegate.swift
//  FirebaseAuthentication
//
//  Created by Samir Raut on 09/09/24.
//

import UIKit
import Firebase
import FirebaseCore


@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
        return true
    }

    

}

