// 16-default-parameter-values.swift
// Default parameter values in Swift functions

// MARK: - Default Parameter Values

func greet(_ person: String, formal: Bool = false) {
    let greeting = formal ? "Good evening" : "Hello"
    print("\(greeting), \(person)!")
}

greet("Alice")                  // Uses default (informal, formal = false)
greet("Bob", formal: true)      // Overrides to formal

// MARK: - Practical Example with Default Parameters

print("\nDriving Directions Examples:")

func drivingDirections(to destination: String, via route: String = "fastest", avoidTolls: Bool = false) {
    var directions = "Driving to \(destination) via the \(route) route."
    if avoidTolls {
        directions += " Avoiding toll roads."
    }

    if route == "scenic" {
        directions += " Enjoy the beautiful views!"
    }
    print(directions)
}

drivingDirections(to: "Central Park")                           // Default route and avoidTolls
drivingDirections(to: "Statue of Liberty", via: "scenic")       // Custom route
drivingDirections(to: "Times Square", avoidTolls: true)         // Default route