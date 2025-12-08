//
//  MoveToWebsite.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/8/25.
//

import SwiftUI
import WebKit

struct MoveToWebsite: UIViewRepresentable {
    let address: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: address) else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: url))
    }
}
