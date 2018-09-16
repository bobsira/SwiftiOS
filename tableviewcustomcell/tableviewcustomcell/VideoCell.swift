//
//  VideoCell.swift
//  tableviewcustomcell
//
//  Created by bobsirasira on 16/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var videoImageView: UIImageView!
    
    func setVideo(video: Video){
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
