// 01-constants-variables.swift
// Swift prefers constants are preferred over variables for safety and performance

// MARK: - Constants vs Variables

// Constants (immutable) - preferred when value won't change
let name = "John Doe"
let pi = 3.14159
let isSwiftAwesome = true

// Variables (mutable) - only use when value needs to change
var age = 25
var score = 0
var currentLevel = 1

// Example: trying to modify a constant will cause a compile error
// name = "Jane Doe" // ❌ This would cause an error!

// But variables can be modified - this is like using 'let' and 'var' in JavaScript, but here 'let' is immutable
age = 26
score += 100
currentLevel = 2

print("Name: \(name)")          // John Doe
print("Age: \(age)")            // 26
print("Score: \(score)")        // 100
print("Level: \(currentLevel)") // 2

// MARK: - Best Practices

// ✅ Good: Start with let, change to var only if needed
let userName = "SwiftLearner"
let maxAttempts = 3

// Variable that will change during game
var attempts = 0
var gameIsActive = true

// Example of when you need var vs let
let gameTitle = "Swift Adventure"  // Title never changes
var playerHealth = 100             // Health changes during gameplay

print("\nGame: \(gameTitle)")
print("Player Health: \(playerHealth)")

// Modify variable during "gameplay"
playerHealth -= 25
print("After damage: \(playerHealth)")

// MARK: - Type Safety

// Swift is type-safe - once a variable has a type, it keeps it
var message = "Hello"       // String type inferred
var counter = 0            // Int type inferred

// message = 123           // ❌ Error: Cannot assign Int to String
// counter = "text"        // ❌ Error: Cannot assign String to Int

print("\nMessage: \(message)")
print("Counter: \(counter)")

// MARK: - Naming Conventions

// Use camelCase for variables and constants
let firstName = "Taylor"
let lastName = "Swift"
let fullName = "\(firstName) \(lastName)"

// Use descriptive names without using space and special characters
// Also avoid single-letter names except for loop counters (i, j, k)
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

// Examples of bad naming
// let x = "data"           // ❌ Not descriptive and single letter
// let user_age = 30        // ❌ Avoid underscores
// var score$ = 100         // ❌ Avoid special characters
// let 2ndPlayer = "Alice"  // ❌ Cannot start with a number
// let class = "Math"       // ❌ 'class' is a reserved keyword

print("\nUser: \(fullName)")
print("Login attempts: \(currentLoginAttempt)/\(maximumNumberOfLoginAttempts)")