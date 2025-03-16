//
//  WatchModel.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import Foundation
import SwiftUI

struct Watch: Codable, Identifiable, Equatable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    let features: [String]
    
    // Computed properties
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var formattedPrice: String { return "$\(price)" }
    
    // Add Equatable conformance to allow using "contains" on arrays of Watch
    static func == (lhs: Watch, rhs: Watch) -> Bool {
        return lhs.id == rhs.id
    }
    
    // Helper function to get color for UI
    func getColor() -> Color {
        return Color(red: red, green: green, blue: blue)
    }
}
