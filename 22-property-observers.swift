// 22-property-observers.swift
// Code that runs when a property changes

// Mark: Adding observers to a struct

struct Game {
    var score = 0 {
        willSet{
            print("Score was \(score)")     // This runs just before the variable is changed
        }

        didSet {
            print("Score is now \(score)")  // This runs just after the variable has changed
        }
    }
}

var game = Game()

print("Score is currectly \(game.score)")
print("Adding 10 to the score")
game.score += 10

print("\nSubtracting 3 from the score")
game.score -= 3