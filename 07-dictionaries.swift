// 07-dictionaries.swift
// Working with dictionaries - key-value pairs

import Foundation

// MARK: - Creating Dictionaries

// Dictionary with string keys and string values
let employee = [
    "name": "Taylor",
    "job": "Singer",
    "location": "Nashville"
]

print("Employee dictionary: \(employee)")

// MARK: - Accessing Dictionary Values

// Access with default value (recommended approach)
print("\nAccessing values:")
print("Name: \(employee["name", default: "Unknown"])")
print("Job: \(employee["job", default: "Unknown"])")
print("Age: \(employee["age", default: "Unknown"])")  // Key doesn't exist

// Without default (returns optional)
if let name = employee["name"] {
    print("Employee name is \(name)")
} else {
    print("Name not found")
}

// MARK: - Modifying Dictionaries

var scores = [
    "English": 85,
    "Math": 92,
    "Science": 78
]

print("\nOriginal scores: \(scores)")

// Add new key-value pair
scores["History"] = 88
print("After adding History: \(scores)")

// Update existing value
scores["Math"] = 95
print("After updating Math: \(scores)")

// Remove a key-value pair
scores["Science"] = nil
print("After removing Science: \(scores)")

// MARK: - Dictionary Properties and Methods

print("\nDictionary info:")
print("Number of subjects: \(scores.count)")
print("Is empty: \(scores.isEmpty)")
print("Keys: \(Array(scores.keys))")
print("Values: \(Array(scores.values))")

// MARK: - Iterating Through Dictionaries

print("\nIterating through dictionary:")
for (subject, score) in scores {
    print("\(subject): \(score)")
}

// MARK: - Creating Empty Dictionaries

var userProfile: [String: String] = [:]  // Empty dictionary
var settings: [String: Bool] = [String: Bool]()  // Another way

userProfile["username"] = "swiftlearner"
userProfile["email"] = "user@example.com"
userProfile["country"] = "Denmark"

print("\nUser Profile:")
for (key, value) in userProfile {
    print("\(key.capitalized): \(value)")
}

// MARK: - Practical Example

// Game player stats
var playerStats: [String: Int] = [
    "level": 5,
    "health": 100,
    "experience": 750
]

print("\nPlayer Stats:")
print("Level: \(playerStats["level", default: 1])")
print("Health: \(playerStats["health", default: 100])")
print("Experience: \(playerStats["experience", default: 0])")

// Level up the player
playerStats["level"] = (playerStats["level"] ?? 1) + 1
playerStats["experience"] = 0
print("After leveling up: \(playerStats)")

// Shopping cart with prices
let shoppingCart: [String: Double] = [
    "Apple": 1.99,
    "Banana": 0.79,
    "Orange": 2.49
]

var total = 0.0
print("\nShopping Cart:")
for (item, price) in shoppingCart {
    print("\(item): $\(String(format: "%.2f", price))")
    total += price
}
print("Total: $\(String(format: "%.2f", total))")