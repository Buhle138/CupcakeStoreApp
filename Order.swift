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
    
    @Published var name = ""
    @Published var streetAddress = ""
    @Published var city = ""
    @Published var zip = ""
    
    var hasValidAddress: Bool{
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty{
            return false
        }
        
        return true
    }
    
    var cost: Double{
        //$2 per cake
        
        var cost = Double(quantity) * 2
        
        cost += (Double(type) / 2 )
        
        if extraFrosting {
            cost += Double(quantity)
        }
        
        if addSprinkles {
            cost += Double(quantity) / 2
        }
        
        return cost
    }
    
}
