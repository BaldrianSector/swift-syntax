// 02-strings.swift
// Working with strings in Swift - text handling and methods

import Foundation

// MARK: - Basic Strings

// Simple strings with double quotes
let greeting = "Hello, World!"
let emptyString = ""
let anotherEmptyString = String()

print("Greeting: \(greeting)")
print("Empty string: '\(emptyString)'")

// MARK: - Strings with Special Characters

// Strings can contain emojis and special characters
let emojiString = "Swift is fun! 🚀✨"
let unicodeString = "Café naïve résumé"

print("\nEmoji string: \(emojiString)")
print("Unicode string: \(unicodeString)")

// MARK: - Escape Characters

// Use backslash (\) to escape special characters
let quotedText = "She said, \"Swift is awesome!\""
let newlineText = "First line\nSecond line"
let tabText = "Column 1\tColumn 2"
let backslashText = "Path: C:\\Users\\Swift"

print("\nQuoted text: \(quotedText)")
print("Newline text:\n\(newlineText)")
print("Tab text: \(tabText)")
print("Backslash: \(backslashText)")

// MARK: - Multiline Strings

// Triple quotes for multiline strings
let multilineString = """
This is a multiline string
that can span
many lines
and preserves formatting
"""

let poem = """
    Roses are red,
    Violets are blue,
    Swift is great,
    And so are you!
    """

print("\nMultiline string:\n\(multilineString)")
print("\nPoem:\n\(poem)")

// MARK: - String Properties and Methods

let sampleText = "Hello Swift Programming"

// .count property (no parentheses needed)
print("\nString: '\(sampleText)'")
print("Length: \(sampleText.count) characters")

// Prefix and suffix checking (returns Bool)
print("\nPrefix/Suffix checks:")
print("Starts with 'Hello': \(sampleText.hasPrefix("Hello"))")
print("Starts with 'hello': \(sampleText.hasPrefix("hello"))") // Case sensitive!
print("Ends with 'Programming': \(sampleText.hasSuffix("Programming"))")
print("Ends with 'ing': \(sampleText.hasSuffix("ing"))")

// Case string methods
print("\nString methods:")
print("Uppercase: \(sampleText.uppercased())")
print("Lowercase: \(sampleText.lowercased())")

// Sorted (returns array, not string)
print("Sorted characters: \(sampleText.sorted())")

// MARK: - String Comparison (Case Sensitivity)

let word1 = "Swift"
let word2 = "swift"
let word3 = "SWIFT"

print("\nCase sensitivity examples:")
print("'\(word1)' == '\(word2)': \(word1 == word2)")       // false
print("'\(word1)' == '\(word3)': \(word1 == word3)")       // false
print("'\(word2)' == '\(word3)': \(word2 == word3)")       // false

// Case-insensitive comparison
print("\nCase-insensitive comparison:")
print("'\(word1).lowercased' equals '\(word2).lowercased' (ignoring case): \(word1.lowercased() == word2.lowercased())")

// MARK: - More Useful String Methods

let messyText = "  Swift Programming  "
print("\nString cleaning:")
print("Original: '|\(messyText)|'")
print("Trimmed: '|\(messyText.trimmingCharacters(in: .whitespaces))|'")

// Check if string is empty
let testEmpty = ""
let testNotEmpty = "Content"

print("\nEmpty checks:")
print("'\(testEmpty)' is empty: \(testEmpty.isEmpty)")
print("'\(testNotEmpty)' is empty: \(testNotEmpty.isEmpty)")

// Contains method
let searchText = "Learning Swift is fun and rewarding"
print("\nContains checks:")
print("Contains 'Swift': \(searchText.contains("Swift"))")
print("Contains 'swift': \(searchText.contains("swift"))")  // Case sensitive!
print("Contains 'fun': \(searchText.contains("fun"))")