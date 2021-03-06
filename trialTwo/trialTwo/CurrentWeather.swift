//
//  CurrentWeather.swift
//  trialTwo
//
//  Created by bobsirasira on 14/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil{
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    /*TODO MOVE ALL THE INITIALIZATION TO THE CLASS INIT() METHOD*/
    
    func downloadWeatherDetails(completed: DownloadComplete){
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        Alamofire.request(currentWeatherURL).responseJSON { response in
            let result = response.result
            print(result)
            if let dict = result.value as? Dictionary<String,Any>{
                /*GETTING THE CITY NAME */
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print("\(self._cityName)")
                }
                
                /*GETTING THE WEATHER TYPE DETAILS */
                if let weather = dict["weather"] as? [Dictionary<String,Any>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                         print("\(self._weatherType)")
                    }
                    
                    /*GETTING THE CURRENT TEMPERATURE */
                    if let main = dict["main"] as? Dictionary<String,Any>{
                        if let currentTemp = main["temp"] as? Double {
                            let kelvinToFahrenheitPreDivision = (currentTemp * (9/5) - 459.67)
                            let kelvinToFahrenheit = Double(round(10 * kelvinToFahrenheitPreDivision/10))
                            self._currentTemp = kelvinToFahrenheit
                             print("\(self._currentTemp)")
                        }
                    }
                }
            }
        }
        completed()
    }
}
