//
//  AppDelegate.swift
//  SalesTax
//
//  Created by Viponpreet Kaur on 2022-02-08.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
//AppDelegate used to be msin entry point of app and place where many logic + appstate handled
    //NOW: ^ split b/w appdelegate and scenedelegate
    // STILL main point of entry of app
    //methods here called for app level lifecycle events 


//where the application set up is done
    //called when app launched
//
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle
// called whenever app needs a new scene or window to display
    // NOT called at app launch but ONLY  when a new scene or new window is need to be obtained
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

//called whenever user discards a scene by swiping it from the multitasking window or if discarded programatically
// called for every discarded scene shortly after didFinishLaunchingWithOptions method is called if app no run
    //when user discard scene
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

//*********can also handle external stuff like push notif registrations , location services , and more
