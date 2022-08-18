//
//  SceneDelegate.swift
//  SalesTax
//
//  Created by Viponpreet Kaur on 2022-02-08.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    //responsible for what's displayed on screen in terms of UI and data
    var window: UIWindow?

//first method called in UISceneSession life cycle
    //creates a new UIWindow, sets root view controller , and makes this window the key window to be shown
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    
    //when scene sent to background -> iOS might discard completely to free up stuff ->NO MEAN
    //THAT APP DEAD OR NO RUN -> ####scene is just disconnected from the session and is NOT active
    //scene can be reconnected by iOS if user brings particular scene back to foreground
    //#######this method used to discard ANY resources that aren't used anymore 
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    //called right AFTER WillEnterForeground and is where scene set up , visible , and ready to use
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    
    //called when app stages to BACKGROUND
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    
    //called when scene is about to start like when app becomes active for first time or when transitions from
    //background to foreground
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    
    
    //called when app stages to BACKGROUND
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

