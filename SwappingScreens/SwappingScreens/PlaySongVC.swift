//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by bobsirasira on 07/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLabel: UILabel!
    
    private var _selectedSong: String!
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitleLabel.text = _selectedSong
        // Do any additional setup after loading the view.
    }

    
    
    @IBOutlet weak var songTitleLbl: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
