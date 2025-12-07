//
//  YouTubeView.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/7/25.
//

import SwiftUI
import WebKit


struct YouTubeView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // 1. url 생성
        // 2. uiView가 scrollView가 되지 않도록하기
        // 3. uiView에서 url로 로드하기
        guard let youtubeURL = URL(string: "https://youtu.be/\(videoID)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
