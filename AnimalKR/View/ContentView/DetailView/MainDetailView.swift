//
//  MainDetailView.swift
//  AnimalKR
//
//  Created by yoonie on 12/6/25.
//

import SwiftUI

struct MainDetailView: View {
    let animal: Animal
    
    var body: some View {
        // 1. Head Image
        Image(animal.image)
            .resizable()
            .scaledToFit()
        
        // 2. Title
        Text(animal.name)
            .font(.largeTitle)
            .fontWeight(.ultraLight)
            .padding(.vertical, 10)
            .background(
                Color.accent
                    .frame(height: 6)
                    .offset(y: 25)
            )
        
        // 3. Headline
        Text(animal.headline)
            .font(.title3)
            .multilineTextAlignment(.center)
            .foregroundStyle(.accent)
            .padding()
    }
}

#Preview {
    MainDetailView(animal: Animal.sampleAnimal)
}
