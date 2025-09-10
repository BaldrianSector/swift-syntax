// 10-type-annotations.swift
// Explicit type declarations using colons

import Foundation

// MARK: - Basic Type Annotations

// Using colon to enforce specific types
var number: Double = 0          // Double instead of Int
var isEnabled: Bool = true      // Explicit Bool
var message: String = "Hello"   // Explicit String

print("Number: \(number)")
print("Enabled: \(isEnabled)")
print("Message: \(message)")

// MARK: - Collection Type Annotations

// Array type annotations
var colors: Array<String> = ["Red", "Yellow", "Blue"]
var albums: [String] = ["For Eva", "Time"]  // Shorter syntax
var numbers: [Int] = [1, 2, 3, 4, 5]

print("\nCollections:")
print("Colors: \(colors)")
print("Albums: \(albums)")
print("Numbers: \(numbers)")

// Dictionary type annotations
var user: [String: String] = ["id": "@twostraws", "name": "Paul"]
var scores: [String: Int] = ["Math": 95, "English": 88]

print("User: \(user)")
print("Scores: \(scores)")

// MARK: - Empty Collections with Types

// When creating empty collections, types help Swift understand what you want
var userName: [String] = [String]()     // Explicit version - good for clarity
var userNames = [String]()              // Inferred version - more common

var emptyScores: [String: Int] = [:]    // Empty dictionary
var settings: [String: Bool] = [:]      // Another empty dictionary

print("\nEmpty collections:")
print("Empty userNames count: \(userNames.count)")
print("Empty scores count: \(emptyScores.count)")

// Add items to prove they work
userNames.append("Alice")
userNames.append("Bob")
emptyScores["Math"] = 85
emptyScores["Science"] = 92

print("After adding items:")
print("UserNames: \(userNames)")
print("Scores: \(emptyScores)")

// MARK: - When Type Annotations Are Useful

// 1. When you want a different type than what Swift would infer
let percentage: Double = 85    // Without annotation, this would be Int
let temperature: Float = 98.6  // Specifically want Float, not Double

// 2. When creating empty collections
var todoList: [String] = []
var gameScores: [String: Int] = [:]

// 3. When the type isn't clear from context
var result: String
if Bool.random() {
    result = "Success"
} else {
    result = "Failed"
}

print("\nType annotation examples:")
print("Percentage: \(percentage) (Double)")
print("Temperature: \(temperature) (Float)")
print("Result: \(result)")

// MARK: - Optional Type Annotations

var optionalName: String? = nil         // Optional string
var optionalAge: Int? = 25             // Optional int with value
var optionalEmail: String?             // Optional string, starts as nil

print("\nOptional types:")
print("Optional name: \(optionalName ?? "No name")")
print("Optional age: \(optionalAge ?? 0)")
print("Optional email: \(optionalEmail ?? "No email")")

// MARK: - Practical Examples

// Game character stats
var playerName: String = "Hero"
var playerLevel: Int = 1
var playerHealth: Double = 100.0
var playerInventory: [String] = []
var playerStats: [String: Int] = [
    "strength": 10,
    "dexterity": 8,
    "intelligence": 12
]

print("\nPlayer Character:")
print("Name: \(playerName)")
print("Level: \(playerLevel)")
print("Health: \(playerHealth)")
print("Inventory items: \(playerInventory.count)")
print("Stats: \(playerStats)")

// Add items to inventory
playerInventory.append("Sword")
playerInventory.append("Shield")
playerInventory.append("Potion")

print("Updated inventory: \(playerInventory)")