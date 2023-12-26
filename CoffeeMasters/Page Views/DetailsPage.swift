//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 25.12.23.
//

import SwiftUI

struct DetailsPage: View {
    var product: Product;
    
    @State var quantity: Int = 1;
    @EnvironmentObject var cartManager: CartManager;
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        ScrollView {
            ProductThumbnail(url: product.imageURL)
                .padding(.top, 32)
            Text(product.description ?? "")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("\(product.price, specifier: "%.2f") ea")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
            
            let total = product.price * Double($quantity.wrappedValue);
                            
            Text("Subtotal $\(total, specifier: "%.2f")")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                dismiss()
                cartManager.add(product: product, quantity: quantity);
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
        .navigationTitle(product.name)
            .toolbar {
                         LikeButton(product: product)
        }
    }
}

#Preview {
    NavigationView {
        DetailsPage(product: Product(id: 0, name: "Demo Product", description: "Demo description", price: 23, image: "blacktea.png"))
                       .environmentObject(LikesManager())
    }
    
}
struct ProductThumbnail: View {
    var url: URL
    var body: some View {
        AsyncImage(url: url)
            .cornerRadius(5)
            .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150);    }
}
