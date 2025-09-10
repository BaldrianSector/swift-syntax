// 04-booleans.swift
// Working with Boolean values - true/false logic

import Foundation

// MARK: - Basic Boolean Values

// Boolean values must be lowercase in Swift
let isSwiftFun = true
let isLearningHard = false
let gameOver = false

print("Is Swift fun? \(isSwiftFun)")
print("Is learning hard? \(isLearningHard)")
print("Game over? \(gameOver)")

// MARK: - Boolean Toggle Method

// Use .toggle() to flip boolean value (equivalent to !someState)
var someState = true
print("\nOriginal state: \(someState)")

someState.toggle()
print("After toggle: \(someState)")

someState.toggle()
print("After second toggle: \(someState)")

// MARK: - Practical Toggle Examples

var isLoggedIn = false
var isDarkMode = true
var notificationsEnabled = true

print("\nUser settings:")
print("Logged in: \(isLoggedIn)")
print("Dark mode: \(isDarkMode)")
print("Notifications: \(notificationsEnabled)")

// Simulate user actions
print("\nUser logs in...")
isLoggedIn.toggle()

print("User toggles dark mode...")
isDarkMode.toggle()

print("User disables notifications...")
notificationsEnabled.toggle()

print("\nUpdated settings:")
print("Logged in: \(isLoggedIn)")
print("Dark mode: \(isDarkMode)")
print("Notifications: \(notificationsEnabled)")

// MARK: - Boolean Logic Operations

let hasUsername = true
let hasPassword = true
let isAccountActive = false

// AND operator (&&)
let canLogin = hasUsername && hasPassword && isAccountActive
print("\nLogin check:")
print("Has username: \(hasUsername)")
print("Has password: \(hasPassword)")
print("Account active: \(isAccountActive)")
print("Can login: \(canLogin)")

// OR operator (||)
let isWeekend = true
let isHoliday = false
let canRelax = isWeekend || isHoliday
print("\nRelax check:")
print("Is weekend: \(isWeekend)")
print("Is holiday: \(isHoliday)")
print("Can relax: \(canRelax)")

// NOT operator (!)
let isOnline = true
let isOffline = !isOnline
print("\nConnection status:")
print("Is online: \(isOnline)")
print("Is offline: \(isOffline)")

// MARK: - Boolean Comparisons

let age = 18
let hasLicense = true
let canDrive = age >= 18 && hasLicense

print("\nDriving eligibility:")
print("Age: \(age)")
print("Has license: \(hasLicense)")
print("Can drive: \(canDrive)")

// Complex boolean logic
let temperature = 75
let isSunny = true
let hasUmbrella = false

let isNiceWeather = temperature > 70 && temperature < 85 && isSunny
let shouldGoOutside = isNiceWeather || (hasUmbrella && temperature > 60)

print("\nWeather conditions:")
print("Temperature: \(temperature)°F")
print("Is sunny: \(isSunny)")
print("Has umbrella: \(hasUmbrella)")
print("Is nice weather: \(isNiceWeather)")
print("Should go outside: \(shouldGoOutside)")

// MARK: - Boolean in Conditional Statements

var playerAlive = true
var hasAmmo = false
var enemiesNearby = true

print("\nGame status:")
print("Player alive: \(playerAlive)")
print("Has ammo: \(hasAmmo)")
print("Enemies nearby: \(enemiesNearby)")

// Using booleans in conditions
if playerAlive && !enemiesNearby {
    print("Safe to explore!")
} else if playerAlive && enemiesNearby && hasAmmo {
    print("Ready for combat!")
} else if playerAlive && enemiesNearby && !hasAmmo {
    print("Run away!")
} else {
    print("Game over!")
}

// MARK: - Practical Boolean Functions

func isValidEmail(_ email: String) -> Bool {
    return email.contains("@") && email.contains(".")
}

func isStrongPassword(_ password: String) -> Bool {
    return password.count >= 8 && 
           password.contains(where: { $0.isUppercase }) && // $0 represents each individual character in the password string as Swift loops through them
           password.contains(where: { $0.isNumber })
}

// Test the functions
let email1 = "user@example.com"
let email2 = "invalid-email"
let password1 = "Password1234"
let password2 = "password"

print("\nValidation examples:")
print("'\(email1)' is valid: \(isValidEmail(email1))")
print("'\(email2)' is valid: \(isValidEmail(email2))")
print("'\(password1)' is strong: \(isStrongPassword(password1))")
print("'\(password2)' is strong: \(isStrongPassword(password2))")