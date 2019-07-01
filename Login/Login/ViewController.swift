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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userName.text
    }

}

