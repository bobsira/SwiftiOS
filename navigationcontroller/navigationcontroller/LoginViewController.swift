//
//  LoginViewController.swift
//  navigationcontroller
//
//  Created by bobsirasira on 15/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        navigateToMainInterface()
    }
    
    private func navigateToMainInterface(){
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController else {
            return
        }
        
        print(mainNavigationVC.topViewController)
        print(mainNavigationVC.viewControllers)
        
        if let mainVC = mainNavigationVC.topViewController as? ViewController {
            mainVC.userName = usernameTextField.text
            mainVC.password = passwordTextField.text
        }
        
        present(mainNavigationVC, animated: true, completion: nil)
    }
}
