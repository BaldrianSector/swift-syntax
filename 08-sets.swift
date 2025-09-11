// 08-sets.swift
// Working with sets - unique values with no order

import Foundation

// MARK: - Creating Sets

// Set automatically removes duplicates and has no specific order
var numbers = Set([1, 1, 3, 5, 7, 9])
print("Numbers set: \(numbers)")  // Duplicates removed, order may vary on every run

let colors = Set(["Red", "Blue", "Green", "Blue", "Red"])
print("Colors set: \(colors)")   // Duplicates removed

// MARK: - Set Properties

print("\nSet properties:")
print("Count: \(numbers.count)")
print("Is empty: \(numbers.isEmpty)")
print("Contains 5: \(numbers.contains(5))")
print("Contains 10: \(numbers.contains(10))")

// MARK: - Adding and Removing Elements

print("\nModifying sets:")
print("Before: \(numbers)")

// Insert new element
numbers.insert(10)
print("After inserting 10: \(numbers)")

// Notice that there is no (at:) method for sets since they are unordered
// Also there is no append() method for sets since there are no indexes

// Try to insert existing element (no change)
numbers.insert(5)
print("After trying to insert 5 again: \(numbers)")

// Remove element
numbers.remove(3)
print("After removing 3: \(numbers)")

// MARK: - Fast Contains Check

// Sets are optimized for contains() - runs instantly even with millions of items
let largeSet = Set(1...1000000)
print("\nFast contains check on large set:")
print("Contains 500000: \(largeSet.contains(500000))")  // Instant!

// Arrays would be much slower for this operation, the following line is commented out to avoid long execution time
// let largeArray = Array(1...1000000)
// print("Array contains check (slower): \(largeArray.contains(500000))")

// MARK: - Set Operations

let setA = Set([1, 2, 3, 4])
let setB = Set([3, 4, 5, 6])

print("\nSet operations:")
print("Set A: \(setA)")
print("Set B: \(setB)")
print("Union: \(setA.union(setB))")           // All unique elements
print("Intersection: \(setA.intersection(setB))")  // Common elements
print("Difference: \(setA.subtracting(setB))")     // A minus B

// MARK: - Practical Example

var visitedCountries = Set<String>()
visitedCountries.insert("Denmark")
visitedCountries.insert("Sweden")
visitedCountries.insert("Norway")
visitedCountries.insert("Denmark")  // Duplicate - won't be added

print("\nTravel tracker:")
print("Visited countries: \(visitedCountries)")
print("Countries visited: \(visitedCountries.count)")
print("Been to Iceland: \(visitedCountries.contains("Iceland"))")