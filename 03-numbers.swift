// 03-numbers.swift
// Working with integers and decimal numbers in Swift

import Foundation

// MARK: - Integers (Whole Numbers)

// Basic integer operations
var counter = 10
print("Initial counter: \(counter)")

// Compound assignment operators
counter += 5
print("After += 5: \(counter)")

counter -= 3
print("After -= 3: \(counter)")

counter *= 2
print("After *= 2: \(counter)")

counter /= 4
print("After /= 4: \(counter)")

// MARK: - Integer Methods and Properties

let number = 120
print("\nNumber: \(number)")

// Check if multiple of another number
print("Is \(number) multiple of 3? \(number.isMultiple(of: 3))")
print("Is \(number) multiple of 7? \(number.isMultiple(of: 7))")
print("Is \(number) multiple of 10? \(number.isMultiple(of: 10))")

// More examples
let testNumber = 15
print("\n\(testNumber) is multiple of:")
print("  3: \(testNumber.isMultiple(of: 3))")
print("  5: \(testNumber.isMultiple(of: 5))")
print("  4: \(testNumber.isMultiple(of: 4))")

// MARK: - Random Numbers

// Random integer in range (inclusive)
let randomId = Int.random(in: 1...1000)
print("\nRandom ID (1-1000): \(randomId)")

// More random examples
let diceRoll = Int.random(in: 1...6)
let percentageChance = Int.random(in: 0...100)
let negativeRange = Int.random(in: -10...10)

print("Dice roll: \(diceRoll)") // Simulates rolling a 6-sided die
print("Percentage: \(percentageChance)%") // Random percentage from 0 to 100
print("Random negative to positive: \(negativeRange)") // Random number between -10 and 10

// MARK: - Doubles (Decimal Numbers)

// Swift uses Double for decimal numbers
let pi = 3.14159
let temperature = 98.6
let price = 19.99
let score = 3.0 // also a Double

print("\nDouble examples:")
print("Pi: \(pi)")
print("Temperature: \(temperature)°F")
print("Price: $\(price)")
print("Score: \(score)")

// Double operations
var bankAccount = 1000.50
print("\nBank account: $\(bankAccount)")

bankAccount += 250.75
print("After deposit: $\(bankAccount)")

bankAccount -= 89.25
print("After withdrawal: $\(bankAccount)")

// MARK: - Type Safety: Cannot Mix Int and Double

let wholeNumber = 42        // Int
let decimalNumber = 3.14    // Double

print("\nType safety:")
print("Whole number (Int): \(wholeNumber)")
print("Decimal number (Double): \(decimalNumber)")

// These would cause compilation errors:
// let result = wholeNumber + decimalNumber  // ❌ Error!
// let mixed = wholeNumber * decimalNumber   // ❌ Error!

// Must convert types explicitly
let convertedInt = Double(wholeNumber)
let result1 = convertedInt + decimalNumber
print("Converted and added: \(result1)")

let convertedDouble = Int(decimalNumber)  // Truncates decimal part
let result2 = wholeNumber + convertedDouble
print("Truncated and added: \(result2)")

// MARK: - Useful Number Methods

let testDouble = 4.7
print("\nDouble methods for \(testDouble):")
print("Rounded: \(testDouble.rounded())")
print("Rounded up: \(testDouble.rounded(.up))")
print("Rounded down: \(testDouble.rounded(.down))")

// Random doubles
let randomPercent = Double.random(in: 0...1)
let randomPrice = Double.random(in: 10.0...100.0)

print("\nRandom doubles:")
print("Random percent (0-1): \(randomPercent)")
print("Random price ($10-$100): $\(String(format: "%.2f", randomPrice))")

// MARK: - Mathematical Operations

let a = 15
let b = 4

print("\nMath operations with \(a) and \(b):")
print("Addition: \(a + b)")
print("Subtraction: \(a - b)")
print("Multiplication: \(a * b)")
print("Division: \(a / b)")           // Integer division notice this will truncate the decimal part and return an Int of 3
print("Remainder: \(a % b)")

// Be aware for precise division, use Doubles
let preciseResult = Double(a) / Double(b)
print("Precise division: \(preciseResult)")