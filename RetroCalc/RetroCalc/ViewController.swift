//
//  ViewController.swift
//  RetroCalc
//
//  Created by bobsirasira on 07/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
//        let soundURL = URL(fileURLWithPath: path!)
//        do{
//            try btnSound! = AVAudioPlayer(contentsOf: soundURL)
//        } catch let error as NSError {
//            print(error.debugDescription)
//        }
    }
    
    @IBAction func numberPressed(sender:UIButton){
        //playSound()
    }
    
    func playSound(){
        if btnSound.isPlaying {
            btnSound.stop()
        }
        btnSound.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

