//
//  Constant.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import SwiftUI

// DATA

let watches: [Watch] = Bundle.main.decode("watch.json")
let categories: [Category] = Bundle.main.decode("category.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let featured: [Featured] = Bundle.main.decode("featured.json")
let sampleWatch: Watch = watches[0]

// COLOR

let colorBackground: Color = Color("colorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
let colorBlue: Color = Color("ColorBlue")

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)

// API
// IMAGE
// FONT
// STRING
// MISC
