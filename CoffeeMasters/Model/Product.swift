//
//  Product.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 25.12.23.
//

import Foundation

struct Product: Identifiable, Decodable {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
