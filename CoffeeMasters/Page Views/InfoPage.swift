//
//  InfoPage.swift
//  CoffeeMasters
//
//  Created by Sebastijan Zindl on 18.10.23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebView()
        return config;
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: "https://sebastijanzindl.me")
        let request = URLRequest(url: url!)
        uiView.load(request);
    }
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

#Preview {
    InfoPage()
}
