//
//  Cart.swift
//  Shopping Cart
//
//  Created by Yeison Vargas on 17/03/17.
//  Copyright © 2017 Megaterios. All rights reserved.
//

import Foundation

// MARK: - Cart

struct Cart {
    
    // MARK: Properties
    
    var products: [Product]
    
    
    // MARK: Initializer
    
    // Generate a Cart from a list entry
    
    init(list: [Product]) {
    
        self.products = list
    }
}
