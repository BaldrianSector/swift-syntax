// 19-trailing-closures-and-shorthand-syntax.swift
// Making closures easier to read and write

// Mark: - Single parameter closures

let team = ["Gloria", "Susan", "Tiffany", "Tasha", "Helen", "Rachel"]

// When a closure has only one line of code, Swift lets us omit the return keyword
var onlyT = team.filter { (name: String) -> Bool in
    name.hasPrefix("T") // We can omit "return" here
}

print(onlyT)

// We can also use shorthand syntax even more by omitting the parameter types and return type
onlyT = team.filter ({ name in
    name.hasPrefix("T") // We can omit "return" here
})

print(onlyT)

// Even further, Swift provides trailing closure syntax, which lets us remove the parentheses entirely when the closure is the last parameter to a function
onlyT = team.filter { name in
    name.hasPrefix("T") // We can omit "return" here
}

print(onlyT)

// Swift also provides shorthand argument names, which let us refer to parameters by number instead of name
onlyT = team.filter { $0.hasPrefix("T") } // $0 is the first parameter, $1 is the second, and so on

print(onlyT)

// MARK: - Using shorthand parameter names

let numbers = [1, 2, 3, 4, 5]

// Using explicit parameter name:
let squared = numbers.map { number in
    number * number
}

// Using shorthand parameter name:
let squaredShorthand = numbers.map { $0 * $0 }

print(squared)          // [1, 4, 9, 16, 25]
print(squaredShorthand) // [1, 4, 9, 16, 25]

// MARK: - Multiple parameter closures

// When a closure has multiple parameters, we can still use trailing closure syntax and shorthand argument names
let sortedTeam = team.sorted { $0 < $1 } // Sort in ascending order

print(sortedTeam)
