//
//  Shop.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import SwiftUI

struct ShopUtility {
    // Add any utility functions related to shop operations
    
    // Example utility function
    static func formatCurrency(_ value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        
        return formatter.string(from: NSNumber(value: value)) ?? "$\(value)"
    }
    
    // Example utility function
    static func calculateTax(price: Double, rate: Double = 0.08) -> Double {
        return price * rate
    }
    
    // Example utility function
    static func calculateTotal(price: Double, tax: Double = 0.08) -> Double {
        return price * (1 + tax)
    }
}
