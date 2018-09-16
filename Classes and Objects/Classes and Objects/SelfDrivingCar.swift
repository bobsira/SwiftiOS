//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by bobsirasira on 16/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    var destination: String?
    override func drive() {
        super.drive()
        if let destination = destination {
            print("driving towards \(destination)")
        }
    }
}
