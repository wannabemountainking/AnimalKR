//
//  DetailHead.swift
//  AnimalKR
//
//  Created by yoonie on 12/6/25.
//

import SwiftUI

struct DetailHead: View {
    
    let headingImage: String
    let headingText: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            Text(headingText)
                .font(.title)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    DetailHead(headingImage: "photo.on.rectangle.angled", headingText: "\(Animal.sampleAnimal.name) 사진들")
}
