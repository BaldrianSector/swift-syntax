// 06-arrays.swift
// Working with arrays - ordered collections of items

import Foundation

// MARK: - Creating Arrays

// Array with initial values
var colors = ["Red", "Green", "Blue"] // Array of Strings
let numbers = [1, 3, 5, 7, 9] // Array of Integers
var readings = [2.5, 3.6, 4.0, 5.2] // Array of Doubles
var isPassed = [true, false, true, false] // Array of Booleans

// Be aware that Swift arrays are type-safe - all elements must be of the same type
// colors.append(42)  // ❌ Error: Cannot add Int to String array

print("Colors: \(colors)")
print("Numbers: \(numbers)")
print("Readings: \(readings)")

// Mixed type array using 'Any' type (not recommended unless necessary)
let mixedArray: [Any] = ["Hello", 42, 3.14, true]
print("Mixed Array: \(mixedArray)")

// MARK: - Accessing Array Elements

// Access items using index (starts at 0)
print("\nAccessing elements:")
print("First color: \(colors[0])")
print("Second color: \(colors[1])")
print("Third color: \(colors[2])")

// ⚠️ WARNING: Accessing invalid index will crash the app!
// print(colors[10])  // This would crash - index out of bounds

// Safe way to check bounds
if colors.indices.contains(3) {
    print("Fourth color: \(colors[3])")
} else {
    print("No fourth color exists")
}

// MARK: - Array Properties

print("\nArray properties:")
print("Number of colors: \(colors.count)")
print("Number of scores: \(scores.count)")
print("Is colors array empty? \(colors.isEmpty)")

// Empty array check
let emptyArray: [String] = []
print("Is empty array empty? \(emptyArray.isEmpty)")

// MARK: - Adding Elements to Arrays

print("\nAdding elements:")
print("Colors before: \(colors)")

// Add single element to end
colors.append("Yellow")
print("After adding Yellow: \(colors)")

// Add multiple elements
// Notice that (contentsOf:) takes an array as input
colors.append(contentsOf: ["Purple", "Orange"])
print("After adding Purple and Orange: \(colors)")

// Insert at specific position
// Notice that (at:) takes an index as input
colors.insert("Pink", at: 1)
print("After inserting Pink at index 1: \(colors)")

// ⚠️ Type safety: all elements must be same type
// colors.append(123)  // ❌ Error: Cannot add Int to String array

// MARK: - Removing Elements

print("\nRemoving elements:")
var fruits = ["Apple", "Banana", "Orange", "Grape", "Mango"]
print("Fruits before: \(fruits)")

// Remove at specific index
let removedFruit = fruits.remove(at: 2)  // Returns the removed element
print("Removed: \(removedFruit)")
print("Fruits after removing at index 2: \(fruits)")

// Remove first and last elements
let firstFruit = fruits.removeFirst()
let lastFruit = fruits.removeLast()
print("Removed first: \(firstFruit), last: \(lastFruit)")
print("Remaining fruits: \(fruits)")

// Remove all elements
var tempArray = ["A", "B", "C"]
tempArray.removeAll()
print("After removeAll: \(tempArray)")

// MARK: - Array Methods

let animals = ["Cat", "Dog", "Elephant", "Tiger", "Lion"]
print("\nArray methods:")
print("Animals: \(animals)")

// Check if array contains an element
print("Contains 'Dog': \(animals.contains("Dog"))")
print("Contains 'Fish': \(animals.contains("Fish"))")

// Find first index of element
if let dogIndex = animals.firstIndex(of: "Dog") {
    print("Dog is at index: \(dogIndex)")
}

// Reverse array
let reversedAnimals = animals.reversed()
print("Reversed: \(Array(reversedAnimals))")

// Sort array
let sortedAnimals = animals.sorted()
print("Sorted: \(sortedAnimals)")

// MARK: - Array Iteration

print("\nIterating through arrays:")

// Simple for loop
print("Colors using for-in:")
for color in colors {
    print("  - \(color)")
}

// With index using enumerated()
print("\nColors with index:")
for (index, color) in colors.enumerated() {
    print("  \(index): \(color)")
}

// MARK: - Array Transformation

let originalNumbers = [1, 2, 3, 4, 5]
print("\nArray transformation:")
print("Original: \(originalNumbers)")

// Map: transform each element
// $0 refers to the current element in the closure
let doubled = originalNumbers.map { $0 * 2 }
let squared = originalNumbers.map { $0 * $0 }
print("Doubled: \(doubled)")
print("Squared: \(squared)")

// Filter: keep elements that meet condition
let evenNumbers = originalNumbers.filter { $0 % 2 == 0 }
let largeNumbers = originalNumbers.filter { $0 > 3 }
print("Even numbers: \(evenNumbers)")
print("Numbers > 3: \(largeNumbers)")

// MARK: - Creating Empty Arrays

// Different ways to create empty arrays
var emptyStringArray: [String] = []
var anotherEmptyArray = [String]()
var explicitEmptyArray: Array<String> = Array<String>()

print("\nEmpty arrays:")
print("Empty string array count: \(emptyStringArray.count)")

// Add elements to empty array
emptyStringArray.append("First item")
emptyStringArray.append("Second item")
print("After adding items: \(emptyStringArray)")