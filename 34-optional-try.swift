// 34-optional-try.swift
// Optional try provides a way to handle errors by converting them into optional values

// MARK: - Using Optional Try

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    if id == 0 {
        throw UserError.badID // Simulate an error for a bad ID
    } else if id == 1 {
        throw UserError.networkFailed // Simulate a network failure
    }

    return "User \(id)" // Return a valid user string for other IDs
}

if let user = try? getUser(id: 23) { // Use optional try to call the function
    print("Fetched user: \(user)") // Prints: Fetched user: User 23
} else {
    print("Failed to fetch user") // This block runs if an error was thrown and converted to nil
}