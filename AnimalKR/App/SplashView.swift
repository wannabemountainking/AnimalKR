//
//  SplashView.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/5/25.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive: Bool = false
    @State private var splashSize: Double = 0.5
    @State private var splashOpacity: Double = 0.5
    
    var body: some View {
        if isActive {
            HomeView()
        } else {
            VStack(spacing: 20) {
                Image("splash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Text("한국의 멸종 위기 동물들")
                    .font(.largeTitle)
                    .foregroundStyle(.accent.opacity(0.8))
                    .fontWeight(.ultraLight)
            }//: VStack(spacing: 20)
            .scaleEffect(splashSize)
            .opacity(splashOpacity)
//            .onAppear {
//                withAnimation(.bouncy(duration: 1.5)) {
//                    splashSize = 1.0
//                    splashOpacity = 1.0
//                    
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
//                        isActive = true
//                    }
//                }
//            }
            .task {
                withAnimation(.bouncy(duration: 1.5)) {
                    splashSize = 1.0
                    splashOpacity = 1.0
                }
                try? await Task.sleep(for: .seconds(3.5))
                withAnimation(.easeInOut(duration: 0.5)) {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
