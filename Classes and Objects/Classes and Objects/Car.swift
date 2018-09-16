//
//  Car.swift
//  Classes and Objects
//
//  Created by bobsirasira on 16/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupue
    case Hatchback
}

class Car {
    var colour: String = "Black"
    var numberOfSeats: Int = 5
    var typeOfCar: CarType = .Coupue
    
    /*DESIGNATED INITIALIZER*/
    init(){
    }
    
    /*CONVENIENT INITIALIZER*/
    convenience init(customerChosenColour: String) {
        self.init()
        colour = customerChosenColour
    }
    
    /*METHODS HERE*/
    func drive(){
        print("Car is moving")
    }
}
