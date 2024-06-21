//
//  Order.swift
//  CupcakeStoreApp
//
//  Created by Buhle Radzilani on 2024/06/21.
//

import Foundation

class Order: ObservableObject {
    
    
    static let types = ["Vanilla", "Strawberry", "Chocolate", "Rainbow"]
    @Published var type = 0
    @Published var quantity = 3
    @Published var specialRequestEnabled = false
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
}
