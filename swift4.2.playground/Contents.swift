//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let label = "The width is"
let width = 94
let widthLabel = label + String(width)

let 🐶 = "dog"
print(🐶)


let i = 1

if i == 1{
    print("ok")
}

let http404Error = (404,"Not Found")

let (statusCode,statusMessage) = http404Error
print(statusCode)
print(statusMessage)

let (justTheStatusCode,_) = http404Error

let http200Status = (code: 200, description: "ok")

print(http200Status.code)
print(http200Status.description)

let possibleNumber = "123"

let convertedNumber = Int(possibleNumber)


var serverResposnseCode: Int? = 404
serverResposnseCode = nil


var surverAnswer: String?

if (convertedNumber != nil) {
    print("convertedNumber contains some integer value of \(convertedNumber!).")
}

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
}else{
     print("The string \"\(possibleNumber)\" could not be converted to an integer")
}


if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100  {
    print("\(firstNumber)<\(secondNumber)<100")
}

guard let liuNumber = Int(possibleNumber) else { throw NSError() }


let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString)
}

func canThrowAnError() throws {
    
}

do {
    try canThrowAnError()
} catch  {
    
}

func makeASandwich() throws {
    
}

do {
    try makeASandwich()
    
} catch  {
    
}

let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

var index = 5

precondition(index > 0, "Index must be greater than zero")

//preconditionFailure("failure")


let b = 10
var a = 5
a = b

let (x,y) = (1,2)

//if x = y {
//    <#code#>
//}

"hello," + "world"
//"hello," - ","


9 % 4
-9 % 4



a += 2

let contentHeight = 40
let hasHeader = true
//let rowHeight = contentHeight + (hasHeader ? 50 : 20)

let rowHeight: Int

if hasHeader {
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 20
}




//a != nil ? a : b

let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"

colorNameToUse = userDefinedColorName ?? defaultColorName


for index in 1...5 {
    print("\(index)times 5 is \(index * 5)")
}

let names = ["Anna","Alex","Brian","jack"]
let count = names.count
for i in 0..<count {
    print("person\(i + 1)is callde\(names[i])")
}

for name in names[2...] {
    print(name)
}
for name in names[...2] {
    print(name)
}


var emptyString = ""
var anotherEmptyString = String()

if anotherEmptyString.isEmpty {
    print("Nothing to see here")
}

var variableString = "Horse"
variableString += "add carriage"


var constantString = "Highlander"
constantString += " and another Highlander"


for character in "Dog!gou" {
    print(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["c","a","t","!"]
let catString = String.init(catCharacters)
//分行显示
let badStart = """
one
two
"""
print(badStart)
let end = """
three


1
"""

print(end)

let multiplier = 3
let message = "\(multiplier)times 2.5 is\(Double(multiplier) * 2.5)"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

let greeting = "Guten Tag!"
greeting[greeting.startIndex]

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

var array = [Int]()

array.append(1)
array.append(2)
array.append(3)

array.append(11)
array.append(12)
array.append(13)
array
array[0]

















