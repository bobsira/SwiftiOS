//
//  Constants.swift
//  trialTwo
//
//  Created by bobsirasira on 14/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import Foundation

let BASE_URL = "https://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let API_ID = "&appid="
let API_KEY = "b28b43fc223ea5d84724a81c2bb1699f"
let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(API_ID)\(API_KEY)"
let FORECAST_URL = "https://samples.openweathermap.org/data/2.5/forecast/daily?lat=-36&lon=123&cnt=10&appid=b1b15e88fa797225412429c1c50c122a1"
typealias DownloadComplete = () -> ()
