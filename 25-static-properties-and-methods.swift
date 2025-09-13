// 25-static-properties-and-methods.swift
// Properties and methods that belong to the type itself, not to instances

// MARK: - Static Properties and Methods

// Use the `static` keyword to define properties and methods that belong to the type itself
// rather than to instances of the type. This is useful for shared data or utility functions.
struct AppData {
    static let version = "1.3 beta 2"
    static let settingsFile = "settings.json"
}

// Doesn’t require creating an AppData() instance just to read it.
// Makes it clear this data is global/shared and not tied to a specific instance.
// Great for constants, config, or utility methods.

print("App Version: \(AppData.version)")
print("Settings File: \(AppData.settingsFile)")

// If we didn’t use static, we’d have to also include this every time we wanted to access it:
// let appData = AppData()  // We'd need to create an instance first to access it

// print("App Version: \(appData.version)")  // Access via instance
// print("Settings File: \(appData.settingsFile)")  // Access via instance