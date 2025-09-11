// 11-conditions.swift
// Conditional statements - if, else, switch, and ternary operator

import Foundation

// MARK: - Basic If-Else Statements

let age = 18
let hasLicense = true

// Simple if statement
if age >= 18 {
    print("You are an adult")
}

// If-else
if hasLicense {
    print("You can drive")
} else {
    print("You need a license to drive")
}

// If-else if-else
let score = 85
if score >= 90 {
    print("Grade: A")
} else if score >= 80 {
    print("Grade: B")
} else if score >= 70 {
    print("Grade: C")
} else {
    print("Grade: F")
}

// MARK: - Logical Operators (same as JS)

let username = "admin"
let password = "secret123"

// AND operator (&&)
if username == "admin" && password == "secret123" {
    print("Login successful")
} else {
    print("Invalid credentials")
}

// OR operator (||)
let isWeekend = true
let isHoliday = false

if isWeekend || isHoliday {
    print("You can relax today!")
} else {
    print("Time to work")
}

// NOT operator (!)
let isRaining = false
if !isRaining {
    print("Great day for a walk")
}

// MARK: - Switch Statements

let direction = "north"

switch direction {
case "north":
    print("Going up")
case "south":
    print("Going down")  
case "east":
    print("Going right")
case "west":
    print("Going left")
default:
    print("Unknown direction")
}

// Switch with multiple cases
let dayOfWeek = 3

switch dayOfWeek {
case 1, 2, 3, 4, 5:
    print("It's a weekday")
case 6, 7:
    print("It's the weekend!")
default:
    print("Invalid day")
}

// Switch with ranges
let temperature = 25

switch temperature {
case ...0:
    print("Freezing")
case 1...15:
    print("Cold")
case 16...25:
    print("Pleasant")
case 26...:
    print("Hot")
default:
    print("Unknown temperature")
}

// MARK: - Ternary Operator

// Format: condition ? "value if true" : "value if false"
let playerScore = 1500
let message = playerScore >= 1000 ? "High Score!" : "Keep trying"
print(message)

// More examples
let weather = "sunny"
let advice = weather == "sunny" ? "Wear sunscreen" : "Take an umbrella"
print(advice)

let number = 42
let evenOrOdd = number % 2 == 0 ? "even" : "odd"
print("\(number) is \(evenOrOdd)")

// MARK: - Combining Conditions

let userAge = 25
let hasAccount = true
let accountVerified = true

if userAge >= 18 && hasAccount && accountVerified {
    print("Access granted to premium features")
} else if userAge >= 18 && hasAccount {
    print("Please verify your account")
} else if userAge >= 18 {
    print("Please create an account")
} else {
    print("Must be 18 or older")
}

// MARK: - Practical Examples

// Game logic
let playerHealth = 75
let hasPotion = true
let inCombat = true

if playerHealth <= 20 && hasPotion && !inCombat {
    print("Use a healing potion")
} else if playerHealth <= 50 && inCombat {
    print("Consider retreating")
} else if playerHealth > 80 {
    print("Ready for battle!")
} else {
    print("Health is moderate")
}

// Weather app logic
let temp = 22
let humidity = 65
let windSpeed = 15

switch temp {
case ...10:
    let clothing = windSpeed > 20 ? "Heavy coat and scarf" : "Warm jacket"
    print("Cold day: Wear \(clothing)")
case 11...20:
    print("Cool day: Light jacket recommended")
case 21...30:
    let comfort = humidity > 70 ? "but feels humid" : "and comfortable"
    print("Nice day \(comfort)")
default:
    print("Hot day: Stay hydrated!")
}

// Login system
func checkLogin(username: String, password: String, isActive: Bool) -> String {
    if username.isEmpty || password.isEmpty {
        return "Please enter both username and password"
    } else if !isActive {
        return "Account is deactivated"
    } else if username == "admin" && password == "password123" {
        return "Welcome, admin!"
    } else {
        return "Invalid credentials"
    }
}

print("\nLogin tests:")
print("Checking login with admin credentials: \(checkLogin(username: "admin", password: "password123", isActive: true))")
print("Checking login with user credentials: \(checkLogin(username: "user", password: "wrong", isActive: true))")
print("Checking login with empty credentials: \(checkLogin(username: "", password: "", isActive: true))")