// 31-unwrapping-optionals-with-guard.swift
// Guard statements provide a way to exit early if certain conditions are not met

// MARK: - Using Guard to Unwrap Optionals

func printSquare(of number: Int?) {
    guard let number = number else { // Guard statement to unwrap the optional
        print("Missing input")
        return // Exit the function if the optional is nil - Guard must exit the current scope if the condition is not met
    }

    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 8) // Prints: 8 x 8 is 64
printSquare(of: nil) // Prints: Missing input

// MARK: - Guard with Multiple Conditions

func checkAge(_ age: Int?) {
    guard let age = age, age >= 18 else { // Unwrap the optional and check if age is at least 18
        print("You must be at least 18 years old.")
        return
    }

    print("Welcome! You are old enough to enter.")
}

checkAge(20) // Prints: Welcome! You are old enough to enter.
checkAge(16) // Prints: You must be at least 18 years old.
checkAge(nil) // Prints: You must be at least 18 years old.