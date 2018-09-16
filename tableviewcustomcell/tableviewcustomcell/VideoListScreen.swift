//
//  VideoListScreen.swift
//  tableviewcustomcell
//
//  Created by bobsirasira on 16/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        let video1 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Your First App")
        let video2 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "My Dev Setuu")
        let video3 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "iOS Interview")
        let video4 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Buttons in TableViews")
        let video5 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "UIPickerView Tutorial")
        let video6 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "Day in the Life")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
    }
}

extension VideoListScreen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        return cell
    }
    
    
}
