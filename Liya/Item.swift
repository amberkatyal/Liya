//
//  Item.swift
//  Liya
//
//  Created by Amber Katyal on 12/05/24.
//

import Foundation
import SwiftData

@Model
final class Item {

    var title: String
    var timestamp: Date
    
    init(title: String, timestamp: Date = .init()) {
        self.title = title
        self.timestamp = timestamp
    }
}
