//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by bobsirasira on 02/07/2019.
//  Copyright © 2019 bobsirasira. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var middleLable: UILabel!
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let exisitingText = middleLable.text {
            middleLable.text = "\(exisitingText)\nEvent number \(eventNumber) was viewDidLoad"
            eventNumber = eventNumber + 1
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let exisitingText = middleLable.text {
            middleLable.text = "\(exisitingText)\nEvent number \(eventNumber) was viewWillAppear"
            eventNumber = eventNumber + 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let exisitingText = middleLable.text {
            middleLable.text = "\(exisitingText)\nEvent number \(eventNumber) was viewDidAppear"
            eventNumber = eventNumber + 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let exisitingText = middleLable.text {
            middleLable.text = "\(exisitingText)\nEvent number \(eventNumber) was viewWillDisappear"
            eventNumber = eventNumber + 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let exisitingText = middleLable.text {
            middleLable.text = "\(exisitingText)\nEvent number \(eventNumber) was viewDidDisappear"
            eventNumber = eventNumber + 1
        }
    }
}
