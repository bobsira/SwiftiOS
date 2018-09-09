//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by bobsirasira on 09/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoPreviewImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(partyRock: PartyRock){
        videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do{
                let data =  try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error 
            }
        }
        //TODO: set image from url
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
