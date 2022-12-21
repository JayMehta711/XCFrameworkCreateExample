//
//  Basket.swift
//  Basket


import Foundation

public struct Basket {
    
    public private(set) var items: [String: Int] = [:]
    
    public init() {

    }
    
    public var count: Int {
        return items.count
    }
    
    public var totalNumItems: Int {
        return items.values.reduce(0) {$0 + $1}
    }
    public mutating func addItem(_ name: String, occurences: Int = 1) {
        if items[name] != nil {
            items[name] = items[name]! + occurences
        } else {
            items[name] = occurences
        }
    }
    
    public mutating func removeItem(_ name: String, occurences: Int = 1) {
        guard let currentCount = items[name], currentCount >= occurences else {
            return
        }
        precondition(occurences > 0, "Can only remove a positive number of occurences")
        
        if currentCount > occurences {
            items[name] = currentCount - occurences
        } else  {
            items.removeValue(forKey: name)
        }
    }
    public func counts(for name: String) -> Int {
        if items[name] != nil {
            return items[name]!
        }
        return 0
    }
}
