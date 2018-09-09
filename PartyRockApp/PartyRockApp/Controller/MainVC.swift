//
//  MainVC.swift
//  PartyRockApp
//
//  Created by bobsirasira on 09/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let p1 = PartyRock(imageURL: "https://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg",
                           videoURL: "https://youtu.be/hMjruqY3Hq8",
                           videoTitle: "Where the sun goes ")
        
        let p2 = PartyRock(imageURL: "https://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg",
                           videoURL: "https://youtu.be/2IH8tNQAzSs",
                           videoTitle: "mirrors")
        
        let p3 = PartyRock(imageURL: "https://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg",
                           videoURL: "https://youtu.be/hMjruqY3Hq8",
                           videoTitle: "lolipop")
        
        let p4 = PartyRock(imageURL: "https://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg",
                           videoURL: "https://youtu.be/hMjruqY3Hq8",
                           videoTitle: "green tommorow")
        
        let p5 = PartyRock(imageURL: "https://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg",
                           videoURL: "https://youtu.be/hMjruqY3Hq8",
                           videoTitle: "summer")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

