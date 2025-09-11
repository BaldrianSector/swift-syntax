// 17-handeling-errors-in-functions.swift
// Handling errors in functions using do, try, catch

import Foundation

// Mark: - Defining an Error Type

enum PasswordError: Error {
    case tooShort
    case tooObvious
    case noNumber
    case noUppercase
}

// using throws to make a function that can throw errors
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.tooShort // throwing an error if the password is too short
    }
    
    let obviousPasswords = ["12345", "password", "qwerty"]
    if obviousPasswords.contains(password) {
        throw PasswordError.tooObvious // throwing an error if the password is too obvious
    }
    
    let numberRange = password.rangeOfCharacter(from: .decimalDigits)
    if numberRange == nil {
        throw PasswordError.noNumber // throwing an error if the password has no number
    }
    
    let uppercaseRange = password.rangeOfCharacter(from: .uppercaseLetters)
    if uppercaseRange == nil {
        throw PasswordError.noUppercase // throwing an error if the password has no uppercase letter
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 12 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// using do, try, catch to handle errors thrown by the function
do {
    let passwordToTest = "MyPass123"
    
    let result = try checkPassword(passwordToTest)
    print("Tested '\(passwordToTest)'", "Password is valid.", "Password rating: \(result)", separator: "\n")
} catch PasswordError.tooShort {
    print("Error: Password is too short.")
} catch PasswordError.tooObvious {
    print("Error: Password is too obvious.")
} catch PasswordError.noNumber {
    print("Error: Password must contain at least one number.")
} catch PasswordError.noUppercase {
    print("Error: Password must contain at least one uppercase letter.")
} catch {
    print("An unexpected error occurred: \(error).") // handling any other unexpected errors
}