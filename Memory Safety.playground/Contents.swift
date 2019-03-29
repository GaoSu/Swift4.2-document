//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var one = 1
print("we're number\(one)!")

var stepSize = 1

func increment(_ number: inout Int) {
    number += stepSize
}
increment(&stepSize)

var copyOfStepSize = stepSize

increment(&copyOfStepSize)

stepSize = copyOfStepSize

func balance(_ x: inout Int, _ y: inout Int) {
    let sum = x + y
    x = sum / 2
    y = sum - x
}

var playOne = 42
var playTwo = 30


for count in 0...100 {
  print(count)
  balance(&playOne, &playTwo)
}
//balance(&playOne, &playTwo)
//balance(&playOne, &playTwo)



struct Player {
    var name: String
    var health: Int
    var energy: Int
    
    static let maxHealth = 10
    mutating func restoreHealth() {
        health = Player.maxHealth
    }
}

extension Player {
    mutating func shareHealth(with teammate: inout Player) {
        balance(&teammate.health, &health)
    }
}

var oscar = Player(name: "Oscar", health: 10, energy: 10)
var maria = Player(name: "Maria", health: 5, energy: 10)
oscar.shareHealth(with: &maria)

var holly = Player(name: "Holly", health: 10, energy: 10)
balance(&holly.health, &holly.energy)















