// 30-optionals.swift
// Optionals handle the absence of a value

// MARK: - Understanding Optionals

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi",
]

// The value for "Peach" does not exist in the dictionary, so Swift returns nil
let peachOpposite = opposites["Peach"]

print(peachOpposite) // Prints: nil

if let marioOpposite = opposites["Mario"] { // Optional binding to safely unwrap the optional
    print("Mario's opposite is \(marioOpposite)")
} else { // This block runs if the optional is nil - Nil returns as a falsy value
    print("Mario has no opposite")
}