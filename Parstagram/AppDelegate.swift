//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Kaeley Lenard on 2/17/20.
//  Copyright © 2020 kaeleylenard. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        Parse.initialize(
                   with: ParseClientConfiguration(block: { (configuration: ParseMutableClientConfiguration) -> Void in
                       configuration.applicationId = "Instagram"
                       configuration.server = "http://pure-wildwood-89529.herokuapp.com/parse"
                   //let's seei f we can figure out parse dashboardokok what commands did you run?
                    
                   }))
        return true
    }
    
    /*
     A lot of issues lol :
     1) your outlets were not attached properly
     2) your code didn't allow http loadsa nd your link was http and not https which is secure
     3) you had wrong app name
     4) you hadn't set app name in heroku config vars
     thank you so muich for pointing all of this out!! i was so frustrated omg haha np gluck! thank u see ya!!
     
     */

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

