// 00-print().swift
// Demonstrating the print() function in Swift

// Simple print statement

print("Hello, World!") // This is a simple print statement in Swift
print("this", "is", "a", "print", "with", "multiple", "arguments") // Print with multiple arguments
print((2 + 2)) // Print the result of an expression

print() // Print a blank line

let name = "John Doe"
let age = 30

print("Name: " + name + ", Age: " + String(age)) // String concatenation using + operator
print("Name:", name, ", Age:", age) // Print with multiple arguments separated by commas
print("Name: \(name), Age: \(age)\n") // String interpolation similar to template literals in JavaScript or f-strings in Python

// Using terminator to change the default newline behavior after a print statement
print("This is the first line.", terminator: " ")
print("This is the second line on the same line.\n") // but with an extra newline
print("This is the third line after two newlines.\n") // with another extra newline

// Using separator to change the default space behavior
print("Apple", "Banana", "Cherry", separator: ", ") // Custom separator
print("Swift", "is", "fun!", separator: " - ") // Another custom separator
print("End of print() demonstration.") // Ending message