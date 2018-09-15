//
//  WeatherVC.swift
//  trialTwo
//
//  Created by bobsirasira on 14/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit
import Alamofire

class WeatherVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var currentTempLabel: UILabel!
    
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather: CurrentWeather!
    var forecast: Forecast!
    var forecasts = [Forecast]()
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        currentWeather = CurrentWeather()
        currentWeather.downloadWeatherDetails {
            self.downloadForecastWeather {
            }
        }
        updateMainUI()
        
    }
    
    func downloadForecastWeather(completed: DownloadComplete){
        /*DOWNLOADING FORECAST WEATHER DATA FOR TABLE VIEW */
        let forecastURL = URL(string: FORECAST_URL)!
        Alamofire.request(forecastURL).responseJSON { response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, Any> {
                if let list = dict["list"] as? [Dictionary<String,Any>]{
                    for object in list {
                        let forecast = Forecast(weatherDict: object)
                        self.forecasts.append(forecast)
                        print(object)
                    }
                    self.forecasts.remove(at: 0)
                    self.tableView.reloadData()
                }
            }
        }
        completed()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as? WeatherCell {
            
            let forecast = forecasts[indexPath.row]
            cell.configureCell(forecast: forecast)
            return cell
        } else {
            return WeatherCell()
        }
        
        
    }
    
    func updateMainUI(){
        print("I reached update ui method")
        dateLabel.text = currentWeather.date
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        currentWeatherTypeLabel.text = "\(currentWeather.weatherType)"
        locationLabel.text = "\(currentWeather.cityName)"
        currentWeatherImage.image = UIImage(named: "\(currentWeather.weatherType)")

    }


}

