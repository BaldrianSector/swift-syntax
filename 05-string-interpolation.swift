// 05-string-interpolation.swift
// String interpolation - embedding values inside strings

import Foundation

// MARK: - Basic String Interpolation

// Use \() to embed values in strings (like f-strings in Python or template literals in JS)
let name = "Taylor"
let age = 35
let height = 5.10

let message = "I am \(age) years old and my name is \(name)"
print(message)

// Multiple values in one string
let introduction = "Hi! I'm \(name), I'm \(age) years old and \(height) feet tall."
print(introduction, terminator: "\n\n")

// MARK: - String Interpolation vs Concatenation

// String interpolation (preferred in Swift)
let firstName = "John"
let lastName = "Doe"
let fullNameInterpolated = "Full name: \(firstName) \(lastName)"

// String concatenation (less preferred)
let fullNameConcatenated = "Full name: " + firstName + " " + lastName

print(fullNameInterpolated)
print(fullNameConcatenated)

// MARK: - Interpolating Different Data Types

let isStudent = true
let gpa = 3.85
let coursesCompleted = 24
let university = "Stanford"

let studentProfile = """
Student Profile:
Name: \(firstName) \(lastName)
University: \(university)
Is Student: \(isStudent)
GPA: \(gpa)
Courses Completed: \(coursesCompleted)
"""
print(studentProfile, terminator: "\n\n")

// MARK: - Interpolation with Calculations

let price = 19.99
let quantity = 3
let taxRate = 0.08

let subtotal = price * Double(quantity)
let tax = subtotal * taxRate
let total = subtotal + tax

let receipt = """
Order Summary:
Item Price: $\(price)
Quantity: \(quantity)
Subtotal: $\(String(format: "%.2f", subtotal))
Tax (\(Int(taxRate * 100))%): $\(String(format: "%.2f", tax))
Total: $\(String(format: "%.2f", total))
"""
print(receipt, terminator: "\n\n")

// MARK: - Interpolation with Method Calls

let username = "swiftlearner"
let email = "user@example.com"

let accountInfo = """
Account Details:
Username: \(username.uppercased())
Email: \(email.lowercased())
Username Length: \(username.count) characters
Valid Email: \(email.contains("@") && email.contains("."))
"""
print(accountInfo, terminator: "\n\n")

// MARK: - Complex Interpolation Examples

let temperature = 22.5
let city = "Copenhagen"
let isRaining = false
let humidity = 65

// Using interpolation with conditional expressions
let weatherReport = """
Weather Report for \(city):
Temperature: \(temperature)°C (\(temperature * 9/5 + 32)°F)
Conditions: \(isRaining ? "Rainy" : "Clear")
Humidity: \(humidity)%
Recommendation: \(temperature > 20 && !isRaining ? "Great day to go outside!" : "Maybe stay indoors")
"""
print(weatherReport, terminator: "\n\n")

// MARK: - Interpolation with Arrays and Collections

let favoriteColors = ["Blue", "Green", "Purple"]
let scores = [85, 92, 78, 96]
let averageScore = scores.reduce(0, +) / scores.count

let preferences = """
User Preferences:
Favorite Colors: \(favoriteColors.joined(separator: ", "))
Test Scores: \(scores.map(String.init).joined(separator: ", "))
Average Score: \(averageScore)
Highest Score: \(scores.max() ?? 0)
"""
print(preferences, terminator: "\n\n")

// MARK: - Date and Time Interpolation

let currentDate = Date()
let formatter = DateFormatter()
formatter.dateStyle = .medium
formatter.timeStyle = .short

let timeStamp = "Report generated on \(formatter.string(from: currentDate))"
print(timeStamp, terminator: "\n\n")

// MARK: - Practical Real-World Examples

// Game character status
let characterName = "Warrior"
let level = 15
let health = 85
let maxHealth = 100
let experience = 2847
let nextLevelExp = 3000

let gameStatus = """
=== Character Status ===
Name: \(characterName)
Level: \(level)
Health: \(health)/\(maxHealth) (\(health * 100 / maxHealth)%)
Experience: \(experience)/\(nextLevelExp) (\(nextLevelExp - experience) XP to next level)
Status: \(health > 75 ? "Excellent" : health > 50 ? "Good" : health > 25 ? "Injured" : "Critical")

"""
print(gameStatus)

// Shopping cart summary
let items = ["MacBook Pro", "iPhone", "AirPods"]
let itemPrices = [1999.00, 999.00, 249.00]
let cartTotal = itemPrices.reduce(0, +)
let itemCount = items.count

let cart = """
🛒 Shopping Cart Summary:
Items (\(itemCount)): \(items.joined(separator: ", "))
Individual Prices: $\(itemPrices.map { String(format: "%.2f", $0) }.joined(separator: ", $"))
Total: $\(String(format: "%.2f", cartTotal))
Average Price: $\(String(format: "%.2f", cartTotal / Double(itemCount)))
"""
print(cart)