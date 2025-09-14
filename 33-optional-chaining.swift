// 33-optional-chaining.swift
// Optional chaining provides a way to call properties, methods, and subscripts on an optional that might currently be nil

// MARK: - Using Optional Chaining with Properties

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() // Optional chaining to call uppercased() on the optional returned by randomElement()

// If randomElement() returns nil from an empty array, chosen will be nil and uppercased() won't be called
// Since the array is not empty, this will always return a random name in uppercase
print("Chosen name: \(chosen ?? "No name found")") // Prints the chosen name in uppercase or a default message if nil
