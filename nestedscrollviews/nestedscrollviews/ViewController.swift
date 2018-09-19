//
//  ViewController.swift
//  nestedscrollviews
//
//  Created by bobsirasira on 18/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var foreground: UIScrollView!
    @IBOutlet weak var background: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        foreground.delegate = self
    }

 

//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        
//        let foregroundHeight = foreground.contentSize.height - CGRect.height
//        let percentageScroll = foreground.contentOffset.y / foregroundHeight
//        let backgroundHeight = background.contentSize.height - CGRectGetHeight(background.bounds)
//        
//        background.contentOffset = CGPoint(x: 0, y: backgroundHeight * percentageScroll)
//    }


}

