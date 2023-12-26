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
        ZStack {
            Image("BackgroundPattern").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 200).clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
    }
}

#Preview {
    Offer(title: "My offer", description: "This is a description")
}
