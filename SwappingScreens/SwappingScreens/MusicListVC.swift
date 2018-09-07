//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by bobsirasira on 07/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Mirrors"
        performSegue(withIdentifier: "SongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination  = segue.destination as? PlaySongVC {
            if let song  = sender as? String {
                destination.selectedSong = song 
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
