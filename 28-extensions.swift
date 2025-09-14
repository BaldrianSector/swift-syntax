// 28-extensions.swift
// Extensions add new functionality to existing types, such as methods, computed properties, and initializers

import Foundation // Needed for trimmingCharacters(in:)

// MARK: - Adding Functionality with Extensions

// Strings have a method trimmingCharacters() to remove whitespace from both ends
// This method is a bit long to type, so let's create a shorter version using an extension

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    mutating func trim() {
        self = self.trimmed()
    }
}

var quote = "   The truth is rarely pure and never simple   "
let trimmedQuote = quote.trimmed()

print("Printing trimmed quote: '\(trimmedQuote)'") // Prints: 'The truth is rarely pure and never simple'

print("Printing original quote: '\(quote)'") // Prints: '   The truth is rarely pure and never simple   '
quote.trim()
print("Printing original quote after .trim: '\(quote)'") // Prints: 'The truth is rarely pure and never simple'

// MARK: - Extensions can also add computed properties

extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let lyrics = """
    But I keep cruising
    Can't stop, won't stop moving
    It's like I got this music
    In my mind
    Saying it's gonna be alright
    """

print("\nNumber of lines:", lyrics.lines.count) // Prints: 5
print("Line 1:", lyrics.lines[0])
print("Line 2:", lyrics.lines[1])
print("Line 3:", lyrics.lines[2])
print("Line 4:", lyrics.lines[3])
print("Line 5:", lyrics.lines[4])
