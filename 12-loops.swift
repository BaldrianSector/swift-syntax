// 12-loops.swift
// Different types of loops in Swift

import Foundation

// MARK: - For-In Loops

// Loop through arrays
let fruits = ["Apple", "Banana", "Cherry"]

print("Fruits I like:")
for fruit in fruits {
    print("I like \(fruit)")
}

// Loop through ranges
print("\nCounting 1 to 5:")
for i in 1...5 {
    print("Number: \(i)")
}

// Range that excludes final number (..< stops before final)
print("\nCounting 0 to 4:")
for i in 0..<5 {
    print("Index: \(i)")
}

// MARK: - Loops with Index

// When you need both index and value
let colors = ["Red", "Green", "Blue"]

print("\nColors with indices:")
for (index, color) in colors.enumerated() {
    print("\(index): \(color)")
}

// MARK: - While Loops

var count = 1

print("\nWhile loop counting to 5:")
while count <= 5 {
    print("Count is \(count)")
    count += 1
}

// Practical while loop example
var playerHealth = 100
var damagePerTurn = 15

print("\nBattle simulation:")
var turn = 1
while playerHealth > 0 {
    print("Turn \(turn): Health = \(playerHealth)")
    playerHealth -= damagePerTurn
    turn += 1
    
    if turn > 10 { break }  // Safety break to avoid infinite loop
}
print("Battle ended")

// MARK: - Repeat-While Loops

// Executes at least once, then checks condition
var attempts = 0

print("\nTrying to connect:")
repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// MARK: - Continue and Break

print("\nSkipping even numbers (continue):")
for number in 1...10 {
    if number % 2 == 0 {
        continue  // Skip to next iteration
    }
    print("Odd number: \(number)")
}

print("\nStopping at first number > 5 (break):")
for number in 1...10 {
    if number > 5 {
        break  // Exit the loop completely
    }
    print("Number: \(number)")
}

// MARK: - Nested Loops

print("\nMultiplication table (nested loops):")
for i in 1...3 {
    for j in 1...3 {
        print("\(i) × \(j) = \(i * j)")
    }
    print("---")
}

// MARK: - Practical Examples

// Shopping cart total
let prices = [19.99, 25.50, 12.75, 8.99]
var total = 0.0

print("Calculating shopping cart total:")
for (index, price) in prices.enumerated() {
    total += price
    print("Item \(index + 1): $\(String(format: "%.2f", price))")
}
print("Total: $\(String(format: "%.2f", total))")

// Password strength checker
let password = "MyP@ssw0rd123"
var strengthScore = 0

print("\nChecking password strength:")
for character in password {
    if character.isUppercase {
        strengthScore += 1
        print("Found uppercase: +1")
        break  // Only count first occurrence
    }
}

for character in password {
    if character.isNumber {
        strengthScore += 1
        print("Found number: +1")
        break
    }
}

for character in password {
    if !character.isLetter && !character.isNumber {
        strengthScore += 1
        print("Found special character: +1")
        break
    }
}

if password.count >= 8 {
    strengthScore += 1
    print("Length >= 8: +1")
}

print("Password strength score: \(strengthScore)/4")

// Finding items in array
let inventory = ["sword", "shield", "potion", "key", "gem"]
let searchItem = "potion"

print("\nSearching for '\(searchItem)' in inventory:")
var found = false
for (index, item) in inventory.enumerated() {
    if item == searchItem {
        print("Found \(searchItem) at position \(index)")
        found = true
        break
    }
}

if !found {
    print("\(searchItem) not found in inventory")
}

// Countdown timer
print("\nCountdown:")
for seconds in (1...5).reversed() {
    print("\(seconds)...")
    // In real app, you'd add a delay here
}
print("Go!")