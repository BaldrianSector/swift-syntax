// 23-custom-initializers.swift
// Run code when a new instance of a struct or class is created

// MARK: - Struct with Custom Initializer

struct Player {
    var name: String
    var number: Int
    
    // Custom initializer
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99) // Assign a random number if not provided
        print("Player \(name) with number \(number) has been created.")
    }
}

// Must make sure all properties inside the struct have a value when the initializer finishes
let player1 = Player(name: "Alice")
let player2 = Player(name: "Bob")

