//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//subscript(index: Int) -> Int {
//    get {
//
//    }
//    set (newValue) {
//
//    }
//}

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int{
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print(threeTimesTable[7])

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int,columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column),"Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 3, columns: 2)

matrix[0,1] = 1.5
matrix[1,0] = 3.2
print(matrix)
//let someValue = matrix[2,2]

