//
//  AppDelegate.swift
//  TransitionPingPong
//
//  Created by IJke Botman on 19/12/2017.
//  Copyright © 2017 IJke Botman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let transitionCoordinator = TransitionCoordinator()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let whiteVC = WhiteViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let nav = UINavigationController(rootViewController: whiteVC)
        nav.isNavigationBarHidden = true
        nav.delegate = transitionCoordinator
        
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        return true
    }
}

