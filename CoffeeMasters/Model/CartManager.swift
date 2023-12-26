//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 25.12.23.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = [];
    
    func add(product: Product, quantity: Int) {
        cart.append((product, quantity));
    }
    
    func remove(product: Product) {
        cart.removeAll { productInCart in
            productInCart.0.id == product.id
        }
    }
    
    func clear() {
        cart.removeAll();
    }
    
    func total() -> Double {
        var total = 0.0;
        for item in cart {
            total += item.0.price * Double(item.1)
        }
        return total;
    }
}
