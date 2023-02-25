//
//  AppDelegate.swift
//  FaceitClient
//
//  Created by Henadzi on 23/02/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let rootNavigationVC = RootNavigationViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootNavigationVC
        rootNavigationVC.setup(withFlow: .home)
        window?.makeKeyAndVisible()
        
        return true
    }
}
