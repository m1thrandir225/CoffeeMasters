//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 17.10.23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var cartManager: CartManager;
    
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu") }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrderPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("My Order")
                }.badge(Int(cartManager.cart.count))
            InfoPage()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
        }
        
    }
}


#Preview {
    ContentView()
        .environmentObject(MenuManager())
        .environmentObject(CartManager())
        .environmentObject(LikesManager())
}
