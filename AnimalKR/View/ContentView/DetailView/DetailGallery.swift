//
//  DetailGallery.swift
//  AnimalKR
//
//  Created by yoonie on 12/6/25.
//

import SwiftUI

struct DetailGallery: View {
    // property
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }//: LOOP
            }//: HStack
        }//: ScrollView
        .scrollIndicators(.hidden)
    }
}

#Preview {
    DetailGallery(animal: Animal.sampleAnimal)
}
