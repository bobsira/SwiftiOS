//
//  WeatherVC.swift
//  rainyshinycloudy
//
//  Created by bobsirasira on 09/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather: CurrentWeather!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        currentWeather.downloadWeatherDetails {
            // SETUP UI TO LOAD DOWNLOADED DATA
<<<<<<< HEAD
            print("In the didLoad")
=======
>>>>>>> 789bea51dcbce45ff28b8ce48e772e9e06194e27
            self.updateMainUI()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)
        return cell
    }
    
    func updateMainUI(){
<<<<<<< HEAD
        print("In the update ui function")
        dataLabel.text = currentWeather.date
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        currentWeatherTypeLabel.text = currentWeather.weatherType
        print(currentWeather.weatherType)
        if let city = currentWeather._cityName {
            print(city)
            locationLabel.text = city
        } else {
            print("I do not have this data")
        }
        
=======
        dataLabel.text = currentWeather.date
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        currentWeatherTypeLabel.text = currentWeather.weatherType
        locationLabel.text = currentWeather.cityName
>>>>>>> 789bea51dcbce45ff28b8ce48e772e9e06194e27
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
    }


}

