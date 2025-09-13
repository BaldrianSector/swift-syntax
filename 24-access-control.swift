// 24-access-control.swift
// Control access to properties and methods using access control keywords

// MARK: - Access Control Keywords

// Access Control Keywords:
// private: Let nothing outside the struct access this property or method
// private(set): Property can be read from outside but only modified within the struct
// fileprivate: Accessible within the same file
// internal: Accessible within the same module (default)
// public: Accessible from any module
// open: Like public, but allows subclassing and overriding from other modules

struct BankAccount {
    private(set) var funds = 0  // Can be read from outside but only modified within the struct

    mutating func deposit(amount: Int) {
        funds += amount
        print("Deposited \(amount). Total funds: \(funds)")
    }

    mutating func withdraw(amount: Int) {
        if funds >= amount {
            funds -= amount
            print("Withdrew \(amount). Remaining funds: \(funds)")
        } else {
            print("Insufficient funds. Available: \(funds), Requested: \(amount)")
        }
    }
}

var account = BankAccount(funds: 100)
print("Initial funds: \(account.funds)")

// Cannot modify funds directly
// account.funds = 500              ❌ This won't work - Cannot assign to property because it has private(set)

account.deposit(amount: 50)
account.withdraw(amount: 30)