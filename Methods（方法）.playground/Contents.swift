//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//MARK:instance Methods. 实例方法


class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.count)
counter.increment(by: 6)
counter.reset()
//Structures and enumerations are value types. By default, the properties of a value type cannot be modified from within its instance methods.
//要想在实例方法中改变枚举和结构体内的值，实例方法需要加上mutating
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
    mutating func moveBySelf(x deltaX: Double, y deltaY: Double) {
       self = Point(x: x + deltaX, y: y + deltaY)
    }
}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
somePoint.x = 100.0
print(somePoint.x)
print(somePoint.y)
somePoint.moveBySelf(x: 2.0, y: 1.0)

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var ovenLight = TriStateSwitch.low
ovenLight.next()
ovenLight.next()

struct LevelTracker {
    static var highestUnlockdeLevel = 1
    var currentLevel = 1
    static func unlock(_ level: Int) {
        if level > highestUnlockdeLevel {
            highestUnlockdeLevel = level
        }
    }
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockdeLevel
    }
    
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
       LevelTracker.unlock(level + 1)
       tracker.advance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "argyrios")
player.complete(level: 1)

print("highest unlock level is\(player.tracker.currentLevel)")

player = Player(name: "Beto")
if player.tracker.advance(to: 6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}



















