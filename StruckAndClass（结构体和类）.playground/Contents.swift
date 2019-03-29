//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//类和结构体的共同点:
//1.定义属性来储存值
//2.定义提供功能的方法
//3.可以用下标点来访问值
//4.可以进行扩展
//5.可以遵循协议
//For more information, see Properties, Methods, Subscripts, Initialization, Extensions, and Protocols.
struct Resolution {
    var width = 0
    var height = 0
}
//不同点
//1.类可以继承而结构体不行
//2.类型转换能在运行时检查和解释类的实例
//3.deinit 能够释放类分配的任何资源
//4.引用计数允许对实例进行多个引用
//For more information, see Inheritance, Type Casting, Deinitialization, and Automatic Reference Counting.
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.1
    var name: String?
}

//不能继承
//struct subResolution: Resolution{
//    var name = "liuhang"
//
//}

class subVideoMode: VideoMode{
    var isBoy = true
    
    deinit {
        
    }
}

extension Resolution {
    func saveProblem() {
        print("everything is ok")
    }
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

someResolution.saveProblem()
print("the width of someResoltion is \(someResolution.width)")
print("the width \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280

// 结构体可以在初始化的时候可以设置属性的初始值
let vga = Resolution(width: 40, height: 480)

let vgb = VideoMode()

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
hd

enum CompassPoint {
    case north,south,east,west
    mutating func turnNorth() {
        self = .north
    }
}

var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()
print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")


let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.2

print(tenEighty.frameRate)

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}
struct SomeStructure {
    static var storedTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStructure.computedTypeProperty


enum NameType {
    case beginWithL
    case beginWithP
}

enum SomeEnumeration {
    static var storedTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 6
    }
}

class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}

SomeClass.computedTypeProperty

SomeEnumeration.computedTypeProperty

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)





















