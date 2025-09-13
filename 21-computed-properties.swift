// 21-computed-properties.swift
// Computed properties calculate a value rather every time they are accessed

// Mark: - Defining a struct with computed properties
struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0

    init(name: String) {
        self.name = name
    }

    init(name: String, vacationAllowed: Int, vacationTaken: Int) {
        self.name = name
        self.vacationAllowed = vacationAllowed
        self.vacationTaken = vacationTaken
    }

    // Computed property - calculates remaining vacation days
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }

        set {
            vacationTaken = vacationAllowed - newValue // notice the formula uses subtraction here. I believe this video is incorrect by using addition
        }
    }

    func printSummary() {
        print("\(name) has \(vacationRemaining) vacation days remaining.")
    }
}

let employee = Employee(name: "John Doe")
employee.printSummary() // John Doe has 14 vacation days remaining.

// Modifying vacationTaken directly
var employee2 = Employee(name: "Jane Smith", vacationAllowed: 20, vacationTaken: 5)

print("Before taking vacation:")
employee2.printSummary() // Jane Smith has 15 vacation days remaining.

// Call vacationRemaining getter directly
let remaining = employee2.vacationRemaining
print("Remaining vacation days (getter): \(remaining)") // 15

// Using the setter to adjust vacationTaken indirectly
employee2.vacationRemaining = 15 // Sets vacationTaken to 5 (20 - 15)
print("After adjusting vacationRemaining via setter:")
employee2.printSummary() // Jane Smith has 15 vacation days remaining.