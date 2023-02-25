//
//  LoginViewController.swift
//  FaceitClient
//
//  Created by Henadzi on 23/02/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func searchTapped(_ sender: Any) {
        delegate?.setup(withFlow: .home)
    }
    
    var delegate: RootNavigationViewControllerDelegate?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

