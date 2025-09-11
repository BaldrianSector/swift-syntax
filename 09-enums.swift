// 09-enums.swift
// Working with enums - fixed set of values

import Foundation

// MARK: - Basic Enums

// Enum ensures our value is one of a specific set
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

// Create and use enum values
var currentDay = Weekday.monday
print("Current day: \(currentDay)")

// Once type is known, you can use shorthand
currentDay = .tuesday
print("New day: \(currentDay)")

// MARK: - Enum with Switch

func describe(day: Weekday) -> String {
    switch day {
    case .monday:
        return "Start of the work week"
    case .tuesday:
        return "Second day of the work week"
    case .wednesday:
        return "Third day of the work week"
    case .thursday:
        return "Fourth day of the work week"
    case .friday:
        return "Last day of the work week"
    }
}

print("\nDay descriptions:")
print("Monday: \(describe(day: .monday))")
print("Tuesday: \(describe(day: .tuesday))")
print("Wednesday: \(describe(day: .wednesday))")
print("Thursday: \(describe(day: .thursday))")
print("Friday: \(describe(day: .friday))")

// MARK: - Enum with Raw Values

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

print("\nPlanets with raw values:")
print("Earth raw value: \(Planet.earth.rawValue)")
print("Mars raw value: \(Planet.mars.rawValue)")

// Create from raw value
if let planet = Planet(rawValue: 3) {
    print("Planet with raw value 3: \(planet)")
}

// MARK: - String Enum

enum GameState: String {
    case menu = "Main Menu"
    case playing = "In Game"
    case paused = "Game Paused"
    case gameOver = "Game Over"
}

let currentState = GameState.playing
print("\nGame state: \(currentState.rawValue)")

// MARK: - Practical Examples

enum Weather {
    case sunny, cloudy, rainy, snowy
}

func getClothingAdvice(for weather: Weather) -> String {
    switch weather {
    case .sunny:
        return "Wear sunglasses and light clothes"
    case .cloudy:
        return "Perfect weather for a walk"
    case .rainy:
        return "Don't forget your umbrella"
    case .snowy:
        return "Bundle up with warm clothes"
    }
}

let today = Weather.rainy
print("\nWeather advice: \(getClothingAdvice(for: today))")

// Enum for error handling
enum NetworkError: String {
    case noConnection = "No internet connection"
    case timeout = "Request timed out"
    case serverError = "Server error"
}

func handleError(_ error: NetworkError) {
    print("Error: \(error.rawValue)")
}

handleError(.timeout)