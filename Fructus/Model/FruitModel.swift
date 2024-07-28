//
//  FruitModel.swift
//  Fructus
//
//  Created by Harry Jafari on 28/7/2024.
//

import SwiftUI

// MARK: FRUITS DTAT MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

