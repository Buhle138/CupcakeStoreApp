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
    @Published var specialRequestEnabled = false {
        //will run when the value is changing.
        //This ensures that when we disable extra specialRequestEnabled then the rest must also be disabled.
        didSet{
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
}
