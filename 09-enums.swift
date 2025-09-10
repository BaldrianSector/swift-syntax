// 09-enums.swift
// Working with enums - fixed set of values

import Foundation

// MARK: - Basic Enums

// Enum ensures our value is one of a specific set
enum Direction {
    case north, south, east, west
}

// Create and use enum values
var currentDirection = Direction.north
print("Current direction: \(currentDirection)")

// Once type is known, you can use shorthand
currentDirection = .east
print("New direction: \(currentDirection)")

// MARK: - Enum with Switch

func describe(direction: Direction) -> String {
    switch direction {
    case .north:
        return "Going up"
    case .south:
        return "Going down"
    case .east:
        return "Going right"
    case .west:
        return "Going left"
    }
}

print("\nDirection descriptions:")
print("North: \(describe(direction: .north))")
print("East: \(describe(direction: .east))")

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