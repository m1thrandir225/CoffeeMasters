//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 17.10.23.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager = MenuManager();
    var cartManager = CartManager();
    
    var likesManager = LikesManager();
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
                .environmentObject(likesManager)
        }
    }
}
