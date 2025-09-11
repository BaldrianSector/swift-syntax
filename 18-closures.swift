// 18-closures.swift
// Assigning functions to variables and passing functions as parameters

import Foundation

let sayHello = {
    print("Hello!")
}

// This is a chunk of code that can be assigned to a variable and passed around as a parameter
sayHello()

// To assign parameters to a closure, we use the same syntax as functions
let sayHelloTo = { (name: String) -> String in
    return "Hello, \(name)!"
}

sayHelloTo("Alice")

// The "in" keyword separates the parameters and return type from the body of the closure
// Everything after "in" is the body of the closure

// Closures are used a lot in Swift, especially for asynchronous operations and callbacks
// For example, the sort method on arrays takes a closure as a parameter to determine the sorting
let team = ["Gloria", "Susan", "Tiffany", "Tasha", "Helen", "Rachel"]

let onlyT = team.filter { (name: String) -> Bool in
    return name.hasPrefix("T")
}

print(onlyT)