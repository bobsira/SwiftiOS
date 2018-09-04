//
//  ViewController.swift
//  PitchPerfect
//
//  Created by bobsirasira on 04/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recodingAudio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func recordAudio(_ sender: Any) {
        print("record")
        recodingAudio.text = "Recording in progress"
    }
}

