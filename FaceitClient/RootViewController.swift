//
//  RootViewController.swift
//  FaceitClient
//
//  Created by Henadzi on 25/02/2023.
//

import UIKit

class RootViewController: UITabBarController {
    
    var navigationDelegate: RootNavigationViewControllerDelegate?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        let appearance = UITabBarAppearance()
        appearance.configureWithDefaultBackground()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        
        let playerInfoVC = PlayerInfoViewController()
        playerInfoVC.tabBarItem.title = "Info"
        playerInfoVC.tabBarItem.image = .init(systemName: "person.fill")
        
        let historyVC = HistoryViewController()
        historyVC.tabBarItem.title = "History"
        historyVC.tabBarItem.image = .init(systemName: "clock.fill")
        
        setViewControllers([playerInfoVC, historyVC], animated: false)
    }
}
