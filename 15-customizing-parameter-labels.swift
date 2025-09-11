// 15-customizing-parameter-labels.swift
// Customizing parameter labels in Swift functions

// MARK: - Custom Parameter Labels

// If you don't want to parse a parameter label when calling a function, use underscore (_)
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let testString = "HELLO WORLD"
let result = isUppercase(testString)

print("Is Uppercase: \(result)")

// You can have different external (for caller) and internal (inside function) names
func printTimesTable(for numberValue: Int) {
    for i in 1...12 {
        print("\(numberValue) x \(i) = \(numberValue * i)")
    }
}

// Notice how the external label is used when calling the function, while the internal name is used inside the function body.
print("\nTimes Table for 5:")
printTimesTable(for: 5)
