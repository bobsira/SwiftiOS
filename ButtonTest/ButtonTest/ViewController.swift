//
//  ViewController.swift
//  ButtonTest
//
//  Created by bobsirasira on 14/02/2019.
//  Copyright © 2019 bobsirasira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.rightImage(image: UIImage(named: "ic_locked")!, padding: 8, renderMode: .alwaysOriginal)
    }


}

extension UIButton {
//    func leftImage(image: UIImage, renderMode: UIImage.RenderingMode) {
//        self.setImage(image.withRenderingMode(renderMode), for: .normal)
//        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: image.size.width / 2)
//        self.contentHorizontalAlignment = .left
//        self.imageView?.contentMode = .scaleAspectFit
//    }
//
//    func rightImage(image: UIImage, renderMode: UIImage.RenderingMode){
//        self.setImage(image.withRenderingMode(renderMode), for: .normal)
//        self.imageEdgeInsets = UIEdgeInsets(top: 0, left:image.size.width / 2, bottom: 0, right: 0)
//        self.contentHorizontalAlignment = .right
//        self.imageView?.contentMode = .scaleAspectFit
//    }
    
    func leftImage(image: UIImage, padding: CGFloat, renderMode: UIImage.RenderingMode) {
        self.setImage(image.withRenderingMode(renderMode), for: .normal)
        contentHorizontalAlignment = .left
        let availableSpace = bounds.inset(by: contentEdgeInsets)
        let availableWidth = availableSpace.width - imageEdgeInsets.right - (imageView?.frame.width ?? 0) - (titleLabel?.frame.width ?? 0)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: availableWidth / 2, bottom: 0, right: 0)
        imageEdgeInsets = UIEdgeInsets(top: 0, left: padding, bottom: 0, right: 0)
    }
    
    func rightImage(image: UIImage, padding: CGFloat, renderMode: UIImage.RenderingMode){
        self.setImage(image.withRenderingMode(renderMode), for: .normal)
        semanticContentAttribute = .forceRightToLeft
        contentHorizontalAlignment = .right
        let availableSpace = bounds.inset(by: contentEdgeInsets)
        let availableWidth = availableSpace.width - imageEdgeInsets.left - (imageView?.frame.width ?? 0) - (titleLabel?.frame.width ?? 0)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: availableWidth / 2)
        imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: padding)
    }
}
