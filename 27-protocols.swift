// 27-protocols.swift
// Protocols define a blueprint of methods and properties that conforming types must implement

// MARK: - Defining and Conforming to Protocols

// Define a protocol
class Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }

    func estimateTime(for distance: Int) -> Int // This method estimates time to travel a distance - Notice no implementation
    func travel(distance: Int) // This method performs the travel action - Notice no implementation
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1

    func estimateTime(for distance: Int) -> Int { // Implementation of estimateTime() provided here
        return distance / 50 // Assuming average speed of 50 km/h
    }

    func travel(distance: Int) { // Implementation of travel() provided here
        let time = estimateTime(for: distance)
        print("I'm driving \(distance) km. Estimated time: \(time) hours.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)
