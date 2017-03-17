//
//  Product.swift
//  Shopping Cart
//
//  Created by Yeison Vargas on 17/03/17.
//  Copyright © 2017 Megaterios. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Product

struct Product {
    
    // MARK: Properties
    
    var name: String
    var price: String
    var stock: String
    
    static let NameKey = "NameKey"
    static let PriceKey = "PriceKey"
    static let StockKey = "StockKey"
    
    // MARK: Initializer
    
    // Generate a Product from a three entry dictionary
    
    init(dictionary: [String : String]) {
        
        self.name = dictionary[Product.NameKey]!
        self.price = dictionary[Product.PriceKey]!
        self.stock = dictionary[Product.StockKey]!
    }
}

// MARK: - Product (All Products)

/**
 * This extension adds static variable allProducts. An array of Product objects
 */

extension Product {
    
    // Generate an array full of all of the products in
    static var allProducts: [Product] {
        
        var productArray = [Product]()
        
        for d in Product.localProductData() {
            productArray.append(Product(dictionary: d))
        }
        
        return productArray
    }
    
    static func localProductData() -> [[String : String]] {
        return [
            [Product.NameKey : "Samsung Galaxy Express 3", Product.PriceKey : "49.88", Product.StockKey : "66"],
            [Product.NameKey : "Samsung Galaxy S5", Product.PriceKey : "147.33", Product.StockKey : "6"],
            [Product.NameKey : "LG Phoenix 2", Product.PriceKey : "85.00", Product.StockKey : "24"],
            [Product.NameKey : "LG Stylo 2", Product.PriceKey : "79.99", Product.StockKey : "33"],
            [Product.NameKey : "Samsung Galaxy S7", Product.PriceKey : "599.00", Product.StockKey : "14"],
            [Product.NameKey : "Kyocero Hydro Shore", Product.PriceKey : "49.00", Product.StockKey : "29"],
            [Product.NameKey : "Motorola Moto G4 Plus", Product.PriceKey : "249.00", Product.StockKey : "85"],
            [Product.NameKey : "Samsung Galaxy S5", Product.PriceKey : "238.72", Product.StockKey : "35"],
            [Product.NameKey : "ZTE Fanfare 2", Product.PriceKey : "24.92", Product.StockKey : "66"],
            [Product.NameKey : "Alcatel Pixi GLITZ", Product.PriceKey : "19.99", Product.StockKey : "41"],
            
            [Product.NameKey : "LG K7", Product.PriceKey : "59.00", Product.StockKey : "55"],
            [Product.NameKey : "Samsung Galaxy Express Prime", Product.PriceKey : "79.00", Product.StockKey : "19"],
            [Product.NameKey : "Samsung Galaxy On5", Product.PriceKey : "39.99", Product.StockKey : "58"],
            [Product.NameKey : "Samsung Galaxy J3", Product.PriceKey : "119.99", Product.StockKey : "3"],
            [Product.NameKey : "Samsung Galaxy S6", Product.PriceKey : "399.00", Product.StockKey : "31"],
            [Product.NameKey : "Samsung Galaxy S5", Product.PriceKey : "259.72", Product.StockKey : "88"],
            [Product.NameKey : "Samsung Galaxy Legend", Product.PriceKey : "29.00", Product.StockKey : "42"],
            [Product.NameKey : "Alcatel onetouch Pixi Avion", Product.PriceKey : "29.88", Product.StockKey : "40"],
            [Product.NameKey : "Alcatel Onetouch Allura", Product.PriceKey : "69.88", Product.StockKey : "67"],
            [Product.NameKey : "Coolpad Catalyst", Product.PriceKey : "49.00", Product.StockKey : "86"],
            
            [Product.NameKey : "LG Rebel L44C", Product.PriceKey : "39.88", Product.StockKey : "17"],
            [Product.NameKey : "ZTE ZMAX PRO", Product.PriceKey : "129.00", Product.StockKey : "12"],
            [Product.NameKey : "Samsung Galaxy S5", Product.PriceKey : "199.72", Product.StockKey : "69"],
            [Product.NameKey : "Samsung Go Prime", Product.PriceKey : "69.99", Product.StockKey : "4"],
            [Product.NameKey : "Alcatel Pixi Eclipse", Product.PriceKey : "7.88", Product.StockKey : "9"],
            [Product.NameKey : "LG STYLO 2 Plus", Product.PriceKey : "179.00", Product.StockKey : "66"],
            [Product.NameKey : "ZTE MAX DUO", Product.PriceKey : "199.00", Product.StockKey : "51"],
            [Product.NameKey : "Motorola E 3G", Product.PriceKey : "26.90", Product.StockKey : "17"],
            [Product.NameKey : "Alcatel Pixi", Product.PriceKey : "29.75", Product.StockKey : "81"],
            [Product.NameKey : "LG G4 US991LD", Product.PriceKey : "232.86", Product.StockKey : "1"],
            
        ]
    }
    
}
