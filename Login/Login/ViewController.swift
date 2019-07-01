//
//  ViewController.swift
//  Login
//
//  Created by bobsirasira on 01/07/2019.
//  Copyright © 2019 bobsirasira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var logIn: UIButton!
    @IBOutlet weak var forgotUserName: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {
            return
        }
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    @IBAction func logIn(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: logIn)
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: forgotUserName)
    }
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: forgotPassword)
    }
    
}

