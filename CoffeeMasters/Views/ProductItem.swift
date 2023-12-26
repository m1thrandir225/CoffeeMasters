//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 25.12.23.
//

import SwiftUI

struct ProductItem: View {
    var product: Product;
    
    
    var body: some View {
        VStack{
            AsyncImage(url: product.imageURL)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .bold()
                    Text("$ \(product.price, specifier: "%.2f")")
                        .font(.caption)

                }.padding(8)
                Spacer()
                LikeButton(product: product)
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)
    }
}

#Preview {
    ProductItem(product: Product(id: 1, name: "Product", description: "", price: 1.2, image: ""))
}
