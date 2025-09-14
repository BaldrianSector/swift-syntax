// 29-protocol-extensions.swift
// Protocol extensions allow you to add new functionality to existing types

// MARK: - Protocol Extensions

// We can extend a protocol to provide default implementations of its methods
// This means that any type conforming to the protocol will automatically get this functionality

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"] // An array of strings is a Collection type in Swift and so it gets the isNotEmpty extension

// Because guests is a Collection, it automatically has the isNotEmpty property
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

let enemies: [String] = [] // An empty array of strings

if enemies.isNotEmpty {
    print("Enemy count: \(enemies.count)")
} else {
    print("The enemy list is empty.")
}

// This works with dictionaries too, because they also conform to Collection

let playerScores = ["Alice": 10, "Bob": 20, "Charlie": 30]

if playerScores.isNotEmpty {
    print("Player count: \(playerScores.count)")
} else {
    print("The player score list is empty.")
}

// MARK: - Protocol extensions can also add methods

extension Collection {
    func summarize() {
        print("There are \(count) items:")
        for name in self {
            print(name)
        }
    }
}

print("\nGuest List:")
guests.summarize()
print("\nEnemy List:")
enemies.summarize()
print("\nPlayer Scores:")
playerScores.summarize()