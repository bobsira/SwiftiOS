//
//  Location.swift
//  trialTwo
//
//  Created by bobsirasira on 16/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() { }
    var latitude: Double!
    var longitude: Double!
}
