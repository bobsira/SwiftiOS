//
//  ViewController.swift
//  uinavigationbar
//
//  Created by bobsirasira on 14/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func helpButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "segueHelp", sender: self)
    }
    
    @IBAction func settingsButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "segueSettings", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*SET TITLE FOR THE DIFFERENT SCREENS*/
        if let requiredSegue = segue.identifier {
            switch requiredSegue {
            case "segueHelp":
                if let destination = segue.destination as? HelpViewController {
                    destination.navigationItem.title = "Help"
                }
            case "segueSettings":
                if let destination = segue.destination as? HelpViewController {
                    destination.navigationItem.title = "Settings"
                }
            default:
                print("no segue found")
            }
        }
//        if segue.identifier == "segueHelp"{
//            if let destination = segue.destination as? HelpViewController {
//                destination.navigationItem.title = "Help"
//            }
//        }
//        
//        if segue.identifier == "segueSettings"{
//            if let destination = segue.destination as? HelpViewController {
//                destination.navigationItem.title = "Settings"
//            }
//        }

    }


}

