//
//  AnimalListView.swift
//  AnimalKR
//
//  Created by yoonie on 12/6/25.
//

import SwiftUI

struct AnimalListView: View {
    
    let animal: Animal
    
    var body: some View {
        HStack(spacing: 20) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 10) {
                Text(animal.name)
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .foregroundStyle(.accent)
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .padding(.trailing, 10)
            }
        }
    }
}

#Preview {
    AnimalListView(animal: Animal.sampleAnimal)
}
