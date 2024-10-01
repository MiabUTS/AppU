//
//  Item.swift
//  AppU
//
//  Created by Mia Brown on 1/10/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
