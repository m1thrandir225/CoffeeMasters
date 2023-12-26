//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 18.10.23.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                    Offer(title: "Welcome Gift", description: "25% off on your first order.")
                    Offer(title: "Welcome Gift", description: "25% off on your first order.")
                }.listStyle(.plain)
                    .listRowSeparator(.hidden)
            }.navigationTitle("Offers")
        }
    }
}

#Preview {
    OffersPage()
}
