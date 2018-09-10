//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by bobsirasira on 10/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import Foundation

let BASE_URL = "https://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let API_ID = "&appid="
let API_KEY = "b28b43fc223ea5d84724a81c2bb1699f"
let API_KEY_TEST = "b6907d289e10d714a6e88b30761fae22"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(API_ID)\(API_KEY)"


