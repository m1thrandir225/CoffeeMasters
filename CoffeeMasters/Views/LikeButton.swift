//
//  LikeButton.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 26.12.23.
//

import SwiftUI

struct LikeButton: View {
    @EnvironmentObject var likesManager: LikesManager;
    
    var product: Product;
    var body: some View {
        Image(systemName: likesManager.isLiked(id: product.id) ? "heart.fill" : "heart")
            .padding()
            .foregroundColor(Color("Secondary"))
            .accessibilityLabel(likesManager.isLiked(id: product.id) ? "Dislike" : "Like")
            .onTapGesture {
                likesManager.toggle(product.id)
            }
    }
}
