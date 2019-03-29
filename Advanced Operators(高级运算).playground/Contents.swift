//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits


let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110

let combinedbits = someBits | moreBits


//let sum = someBits + moreBits

let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101

let outputBits = firstBits ^ otherBits


let shiftBits: UInt8 = 4
shiftBits << 1
shiftBits << 2
shiftBits << 5
shiftBits << 6
shiftBits >> 2


let pink: UInt32 = 0xCC6699
let redComponent = (pink & 0xFF0000) >> 16










