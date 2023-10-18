//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 18.10.23.
//

import SwiftUI

struct Offer: View {
    @State var title: String = ""
    @State var description: String = ""
    
    var body: some View {
        VStack {
            Text(title).padding().font(.title)
            Text(description).padding()
        }
    }
}

#Preview {
    Offer(title: "My offer", description: "This is a description")
}
