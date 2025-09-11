// 14-tuples.swift
// Working with tuples - grouping multiple values into one

import Foundation

// MARK: - Creating and Using Tuples

// Tuples group multiple values into a single compound value

func getUser() -> (firstName: String, lastName: String, age: Int) {
    return ("John", "Doe", 30)
}

let user = getUser()
print("User: \(user.firstName) \(user.lastName), Age: \(user.age)")

// Destructuring a tuple into separate variables
let (firstName, lastName, age) = getUser()
print("First Name: \(firstName), Last Name: \(lastName), Age: \(age)")

// Using underscore to ignore unwanted values
let (firstNameOnly, _, _) = getUser()
print("First Name only: \(firstNameOnly)")

// MARK: - Functions Returning Tuples
func analyzeScore(score: Int) -> (grade: String, passed: Bool) {
    let grade: String
    switch score {
    case 90...100:
        grade = "A"
    case 80..<90:
        grade = "B"
    case 70..<80:
        grade = "C"
    case 60..<70:
        grade = "D"
    default:
        grade = "F"
    }
    let passed = score >= 60
    return (grade, passed)
}
let result = analyzeScore(score: 85)
print("\nScore Analysis - Grade: \(result.grade), Passed: \(result.passed)")