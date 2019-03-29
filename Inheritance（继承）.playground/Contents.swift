//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed)miles per hour"
    }
    func makeNoise() {
       print("noise")
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

class Bicycle: Vehicle {
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0
print(bicycle.description)

class Tandem: Bicycle {
    var curremNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.curremNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print(tandem.description)

class Train: Vehicle {
    override func makeNoise() {
        print("choo ,choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in year\(gear)"
    }
}
let car = Car()
car.currentSpeed = 26.0
car.gear = 3
print("\(car.description)")
