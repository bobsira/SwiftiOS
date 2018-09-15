//
//  LoginViewController.swift
//  tabbedbarcontrollerexample
//
//  Created by bobsirasira on 15/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func loginTapped(_ sender: Any) {
        //get reference to main tab controller
        let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as? MainTabController
        
        //mainTabController?.selectedViewController = mainTabController?.viewControllers![2]
        
        //switching tabs to the default at cliking
        mainTabController?.selectedViewController = mainTabController?.viewControllers?[1]
        
        present(mainTabController!, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }




}

