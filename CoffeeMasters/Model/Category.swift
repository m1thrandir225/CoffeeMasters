//
//  Category.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 25.12.23.
//

import Foundation

struct Category: Identifiable, Decodable {
    var id: String { name }
    var name: String
    var products: [Product] = []
    
    func filteredItems(text: String) -> [Product] {
        if text.count > 0 {
            return products.filter({item in
                item.name.contains(text)
            })
        } else {
            return products;
        }
    }
}
