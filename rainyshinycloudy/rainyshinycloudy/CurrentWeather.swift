//
//  CurrentWeather.swift
//  rainyshinycloudy
//
//  Created by bobsirasira on 10/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

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
        if _weatherType == nil {
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
    func downloadWeatherDetails(completed: DownloadComplete){
        //Alamorefire download
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        Alamofire.request(currentWeatherURL).responseJSON { response in
            //let result = response.result
            print(response)
            //print(result)
            if let dict =  response.value as? Dictionary<String,Any> {
                // parse the name which is a string
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print(self._cityName)
                }
                // parse the weather type which is stored in an array of dictionary
                if let weather = dict["weather"] as? [Dictionary<String,Any>] {
                    
                    //retrieve the weather string here
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main
                        print(self._weatherType)
                    }
                }
                //get temperature details from here
                if let main = dict["main"] as? Dictionary<String,Any>{
                    if let currentTemperature = main["temp"] as? Double {
                        let kelvinToFahrenheitPreDivision =  (currentTemperature * (9/5) - 459.67)
                        let kelvinToFahrenheit = Double(round(10 * kelvinToFahrenheitPreDivision / 10) )
                        self._currentTemp = kelvinToFahrenheit
                        print(self._currentTemp)
                    }
                }
            }
        }
        completed()
    }
}
