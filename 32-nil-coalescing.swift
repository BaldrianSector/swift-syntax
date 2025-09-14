// 32-nil-coalescing.swift
// The nil coalescing operator provides a way to supply a default value when an optional is nil

// MARK: - Using the Nil Coalescing Operator

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "No favorite show found" // If randomElement() returns nil, use the default string

print("Favorite TV show: \(favorite)") // Prints the randomly selected show or the default message

let input = ""
let number = Int(input) ?? 0 // If input cannot be converted to an Int, use 0 as the default value

print("\nConverted number: \(number)") // Prints 0 because input is an empty string