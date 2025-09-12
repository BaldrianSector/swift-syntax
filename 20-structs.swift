// 20-structs.swift
// Understanding and using Swift's struct data type

// Mark: - Defining a struct

// Structs are custom data types that let us group related values together
struct Album {
    let title: String
    let artist: String
    var isReleased = true
    let year: Int

    func printSummary() {
        print("\(title) by \(artist), released in \(year).")
    }

    // To have a function that modifies properties of the struct, we need to mark it as mutating
    // This is because structs are value types, and modifying properties changes the instance itself
    mutating func removeFromSale() {
        isReleased = false
        print("\(title) is no longer for sale.")
    }
}

// Mark: - Initializing a struct instance
var red = Album(title: "Red", artist: "Taylor Swift", year: 2012)

// Memberwise initializer
red.printSummary()

// Modifying a property
red.removeFromSale()
print("Is \(red.title) released? \(red.isReleased)")

// Be aware that removeFromSale() is marked as mutating, so we need to declare red as a variable (var) instead of a constant (let) to call it
// If we had declared red as a constant, the following line would cause a compile-time error
// let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
