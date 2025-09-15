// 26-classes.swift
// Classes are custom data types with properties and methods

// MARK: - Introduction to Classes

// Classes are similar to structs but have additional features
// They have 5 key differences from strucs.

// MARK: - 1. Inheritance
// Classes can inherit from other classes, gaining their properties and methods 
// Like a Developer class inheriting from an Employee class

// Define a base/parent class
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

// Define a subclass Developer that inherits properties and methods from Employee
class Developer: Employee {
    func work() {
        print("I'm coding for \(hours) hours.")
    }

    override func printSummary() { // Override the printSummary method from Employee
        print("I spend \(hours) hours a day fighting bugs.")
    }
}

let novall = Developer(hours: 8)
novall.work() // From Developer
novall.printSummary() // From Developer overrides Employee printSummary() method

// MARK: - 2. Custom Initializers

// Swift will never make a generated initializer for a class that has a parent class. 
// You must always create your own initializers for classes that have a parent class.
// If a subclass has no custom initializer, it inherits all of its parent's initializers.

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) // Call parent class initializer
    }

    func carType() {
        if isElectric && isConvertible {
            print("This car is an electric convertible.")
        } else if isElectric {
            print("This car is electric.")
        } else if isConvertible {
            print("This car is a convertible.")
        } else {
            print("This car is neither electric nor convertible.")
        }
    }
}

// MARK: - 3. Reference Types

// Classes are passed by reference, so multiple variables can point to the same instance (unlike structs which are copied)

class Actor {
    var name = "Nicholas Cage"
}

var actor1 = Actor()
var actor2 = actor1 // Both actor1 and actor2 reference the same instance

print("Actor 1: \(actor1.name)") // Nicholas Cage
print("Actor 2: \(actor2.name)") // Nicholas Cage

actor2.name = "Tom Cruise" // Changing actor2 also changes actor1, because they reference the same instance
print ("--- After changing actor2 to Tom Cruise ---")
print("Actor 1: \(actor1.name)") // Tom Cruise
print("Actor 2: \(actor2.name)") // Tom Cruise

// MARK: - Structs are Value Types (for comparison)

struct StructActor {
    var name = "Nicholas Cage"
}

var structActor1 = StructActor()
var structActor2 = structActor1 // structActor2 gets a copy of structActor1 (not a reference)

print("Struct Actor 1: \(structActor1.name)") // Nicholas Cage
print("Struct Actor 2: \(structActor2.name)") // Nicholas Cage

structActor2.name = "Tom Cruise" // Changing structActor2 does not change structActor1 (they are separate instances)
print("--- After changing structActor2 to Tom Cruise ---")
print("Struct Actor 1: \(structActor1.name)") // Nicholas Cage (unchanged)
print("Struct Actor 2: \(structActor2.name)") // Tom Cruise

// MARK: - 4. Deinitializer

// Classes can have a deinitializer, which runs when the last strong reference to an instance is destroyed (deallocated from memory)
class Site {
    let id: Int

    init(id: Int) {
        self.id = id
        print("Site \(id): I've been created!")
    }

    deinit {
        print("Site \(id): I've been destroyed!")
    }
}

for i in 1...3 {
    let site = Site(id: i)
    print("Site \(site.id): I'm in control!")
}

// MARK: - 5. Modifying Properties with 'let' Instances

// Classes can have their properties modified even when the instance is declared with 'let'
// This is unlike structs which are immutable when declared with 'let'
class Singer {
    var name = "Adele"
}

let singer = Singer()
singer.name = "Justin" // This works - we can change properties of a class instance even when the instance is declared with 'let'
print(singer.name) // Justin

// Note: Classes don't need the 'mutating' keyword for methods that modify properties, unlike structs which do.