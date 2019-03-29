//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var anotherThreeDoubles = Array(repeating: 0.5, count: 5)

//var shoppingList: [String] = ["Eggs", "Milk"]
var shoppingList = ["Eggs", "Milk"]

var letters = Set<Character>()
letters.insert("a")
print(letters)
letters = []
var favoriteGenres: Set<String> = ["Rock","Classical","Hip hop"]

var faviruteGenres: Set = ["Rock","Classical","Hip hop"]

if faviruteGenres.isEmpty {
    print("1")
}else{
    print("8")
}

for genre in faviruteGenres {
    print("\(genre)")
}

for genre in faviruteGenres.sorted() {
    print("\(genre)")
}

let oddDigits: Set = [1,5,3,9,7]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]
//oddDigits.union(evenDigits).sorted()

//oddDigits.intersection(evenDigits).sorted()

oddDigits.subtracting(singleDigitPrimeNumbers).sorted()

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()


var namesOfIntegers = [Int: String]()

namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

let minuteInterval = 5
let minutes = 60

for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark)
    // render the tick mark every 3 hours (3, 6, 9, 12)
}

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08;
board[06] = +11;
board[09] = +09;
board[10] = +02
board[14] = -10;
board[19] = -11;
board[22] = -02;
board[24] = -08

var square = 0
var diceRoll = 0
//while square < finalSquare {
//    // roll the dice
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    // move by the rolled amount
//    square += diceRoll
//
//    print("++++\(square)++\(diceRoll)")
//    if square < board.count {
//        // if we're still on the board, move up or down for a snake or a ladder
//        square += board[square]
//        print("----\(square)++\(diceRoll)")
//    }
//}
//print("Game over!")

repeat {
    // move up or down for a snake or ladder
    square += board[square]
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
} while square < finalSquare
print("Game over!")

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}


let puzzleInput = "great minds think alike"
var puzzleOutput = ""

let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]

for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)


func greet(person: [String: String]) {
    guard let name = person["name"] else { return  }
    print("hello\(name)")
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}


greet(person: ["name": "liuhang"])

greet(person: ["name": "liuhang", "location": "cuper"])



if #available(iOS 10, *) {
    
}else{
    
}

func greet(person: String) -> String {
    let greeting = "Hello," + person + "!"
    return greeting
}

print(greet(person: "liuhang"))



/// 交换两个数
///
/// - Parameters:
///   - a: a value
///   - b: b value
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)

print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}


var mathFuction: (Int, Int) -> Int = addTwoInts

mathFuction = multiplyTwoInts(_:_:)

let anotherMathFunction = addTwoInts

//func printMathResult(_ mathFuction: )
//
//func printMathResult(  , _ a: Int, _ b: Int) -> {
//
//}

//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    return backward ? stepBackward : stepForward
//}
func chooseStepFunction(back: Bool) -> (Int) -> Int {
    func stepForward(_ input: Int) -> Int {
        return input + 1
    }
    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }
     return back ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(back: currentValue > 0)
print(moveNearerToZero)
//moveNearerToZero(10)

print("Counting to zero:")
// Counting to zero:
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")




