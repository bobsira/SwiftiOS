//
//  main.swift
//  Classes and Objects
//
//  Created by bobsirasira on 16/09/2018.
//  Copyright © 2018 bobsirasira. All rights reserved.
//

import Foundation

let myCar = Car()

let someRichGuysCar = Car(customerChosenColour: "Gold")

let mySelfDrivingCar = SelfDrivingCar()


//print(myCar.colour)
//print(myCar.numberOfSeats)
//print(myCar.typeOfCar)

//print(someRichGuysCar.colour)
//print(someRichGuysCar.numberOfSeats)
//print(someRichGuysCar.typeOfCar)

myCar.drive()
mySelfDrivingCar.drive()
print(mySelfDrivingCar.colour)
mySelfDrivingCar.destination = "1 Hacker Way"
mySelfDrivingCar.drive()
