// 13-functions.swift
// Functions - reusable blocks of code

import Foundation

// MARK: - Basic Functions

// Simple function with no parameters or return value
func sayHello() {
    print("Hello, World!")
}

sayHello()

// Function with parameters
func greet(name: String) {
    print("Hello, \(name)!")
}

greet(name: "Taylor")

// MARK: - Functions with Return Values

// Function that returns a value
func add(a: Int, b: Int) -> Int {
    return a + b
}

let sum = add(a: 5, b: 3)
print("5 + 3 = \(sum)")

// Single expression functions can omit 'return'
func multiply(a: Int, b: Int) -> Int {
    a * b
}

print("4 × 6 = \(multiply(a: 4, b: 6))")

// MARK: - Returning Multiple Values (Tuples)

func getUser() -> (name: String, age: Int) {
    return ("John Doe", 25)
}

let user = getUser()
print("User: \(user.name), Age: \(user.age)")

// Destructure the tuple
let (userName, userAge) = getUser()
print("Name: \(userName), Age: \(userAge)")

func analyzeScore(score: Int) -> (grade: String, passed: Bool) {
    let grade = score >= 90 ? "A" : score >= 80 ? "B" : score >= 70 ? "C" : "F"
    let passed = score >= 70
    return (grade, passed)
}

let result = analyzeScore(score: 85)
print("Grade: \(result.grade), Passed: \(result.passed)")

// MARK: - Custom Parameter Labels

// External label (for caller) vs internal name (inside function)
func greetUser(saying greeting: String, to name: String) {
    print("\(greeting), \(name)!")
}

greetUser(saying: "Hello", to: "Swift")

// Omit external label with underscore
func calculateArea(_ width: Double, _ height: Double) -> Double {
    return width * height
}

let area = calculateArea(5.0, 3.0)  // No parameter labels needed
print("Area: \(area)")

// MARK: - Default Parameter Values

func createUser(name: String, age: Int = 18, isActive: Bool = true) {
    print("Created user: \(name), age \(age), active: \(isActive)")
}

createUser(name: "Alice")                           // Uses defaults
createUser(name: "Bob", age: 25)                   // Overrides age
createUser(name: "Charlie", age: 30, isActive: false)  // Overrides both

// MARK: - Error Handling in Functions

enum PasswordError: Error {
    case tooShort
    case tooWeak
}

func validatePassword(_ password: String) throws -> Bool {
    if password.count < 8 {
        throw PasswordError.tooShort
    }
    
    if !password.contains(where: { $0.isNumber }) {
        throw PasswordError.tooWeak
    }
    
    return true
}

// Using throwing functions
do {
    let isValid = try validatePassword("abc123")
    print("Password is valid! \(isValid)")
} catch PasswordError.tooShort {
    print("Password is too short")
} catch PasswordError.tooWeak {
    print("Password needs at least one number")
} catch {
    print("Unknown error")
}

// MARK: - Practical Function Examples

func formatCurrency(_ amount: Double) -> String {
    return "$\(String(format: "%.2f", amount))"
}

func calculateTip(bill: Double, tipPercentage: Double = 0.18) -> (tip: Double, total: Double) {
    let tip = bill * tipPercentage
    let total = bill + tip
    return (tip, total)
}

let billAmount = 45.67
let tipResult = calculateTip(bill: billAmount)
print("Bill: \(formatCurrency(billAmount))")
print("Tip (18%): \(formatCurrency(tipResult.tip))")
print("Total: \(formatCurrency(tipResult.total))")

// Game functions
func rollDice(sides: Int = 6) -> Int {
    return Int.random(in: 1...sides)
}

func playRound(playerName: String) -> String {
    let roll = rollDice()
    switch roll {
    case 6:
        return "\(playerName) rolled \(roll) - Critical hit!"
    case 1:
        return "\(playerName) rolled \(roll) - Critical miss!"
    default:
        return "\(playerName) rolled \(roll)"
    }
}

print("\nGame results:")
print(playRound(playerName: "Alice"))
print(playRound(playerName: "Bob"))

// String utilities
func isPalindrome(_ text: String) -> Bool {
    let cleaned = text.lowercased().replacingOccurrences(of: " ", with: "")
    return cleaned == String(cleaned.reversed())
}

func countWords(in text: String) -> Int {
    return text.components(separatedBy: .whitespacesAndNewlines)
        .filter { !$0.isEmpty }.count
}

print("\nText utilities:")
print("'racecar' is palindrome: \(isPalindrome("racecar"))")
print("'hello world' is palindrome: \(isPalindrome("hello world"))")
print("Word count in 'Hello Swift World': \(countWords(in: "Hello Swift World"))")

// Array helper functions
func findLargest(in numbers: [Int]) -> Int? {
    return numbers.max()
}

func average(of numbers: [Double]) -> Double {
    guard !numbers.isEmpty else { return 0 }
    return numbers.reduce(0, +) / Double(numbers.count)
}

let testNumbers = [23, 67, 12, 89, 34]
let testScores = [85.5, 92.0, 78.5, 96.0]

if let largest = findLargest(in: testNumbers) {
    print("Largest number: \(largest)")
}
print("Average score: \(String(format: "%.1f", average(of: testScores)))")