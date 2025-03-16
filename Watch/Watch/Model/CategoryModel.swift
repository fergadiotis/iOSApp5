//
//  CategoryModel.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
