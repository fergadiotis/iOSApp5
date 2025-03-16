//
//  Shop.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import Foundation
import SwiftUI

// This is the main Shop class that will be used as an environment object
class Shop: ObservableObject {
    // Published properties to track state
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Watch? = nil
    
    // Optional: Add a cart functionality
    @Published var cart: [Watch] = []
    @Published var cartQuantities: [Int: Int] = [:]
    
    // Method to add a watch to the cart
    func addToCart(_ watch: Watch, quantity: Int = 1) {
        if !cart.contains(where: { $0.id == watch.id }) {
            cart.append(watch)
            cartQuantities[watch.id] = quantity
        } else if let existingQuantity = cartQuantities[watch.id] {
            cartQuantities[watch.id] = existingQuantity + quantity
        }
    }
    
    // Method to remove a watch from the cart
    func removeFromCart(_ watch: Watch) {
        cart.removeAll(where: { $0.id == watch.id })
        cartQuantities.removeValue(forKey: watch.id)
    }
    
    // Method to clear the cart
    func clearCart() {
        cart = []
        cartQuantities = [:]
    }
    
    // Calculate total cart value
    func cartTotal() -> Double {
        var total: Double = 0
        for watch in cart {
            if let quantity = cartQuantities[watch.id] {
                total += Double(watch.price * quantity)
            }
        }
        return total
    }
}
