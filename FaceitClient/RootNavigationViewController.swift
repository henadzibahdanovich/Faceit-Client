//
//  RootNavigationViewController.swift
//  FaceitClient
//
//  Created by Henadzi on 25/02/2023.
//

import UIKit

enum CurrentFlow {
    case login
    case home
}

protocol RootNavigationViewControllerDelegate {
    func setup(withFlow currentFlow: CurrentFlow)
}

class RootNavigationViewController: UINavigationController, RootNavigationViewControllerDelegate {
    func setup(withFlow currentFlow: CurrentFlow) {
        switch currentFlow {
        case .login:
            let storyboard = UIStoryboard(name: "LoginViewController", bundle: nil)
            guard let loginVC = storyboard.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else { return }
            loginVC.delegate = self
            setViewControllers([loginVC], animated: true)
        case .home:
            let rootVC = RootViewController()
            rootVC.navigationDelegate = self
            setViewControllers([rootVC], animated: true)
        }
    }
}
