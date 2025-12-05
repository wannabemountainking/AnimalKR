//
//  DetailView.swift
//  AnimalKR
//
//  Created by yoonie on 12/6/25.
//

import SwiftUI

struct DetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // 1. Main
                MainDetailView(animal: animal)
                
                // 2. Gallery
                Group {
                    DetailHead(headingImage: "photo.on.rectangle.angled", headingText: "\(animal.name) 사진들")
                    DetailGallery(animal: animal)
                }
                
                // 3. Description
                Group {
                    DetailHead(headingImage: "info.circle", headingText: "자세한 정보")
                    Text(animal.description)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                }
                
                // 4. Fact
                Group {
                    DetailHead(headingImage: "location.magnifyingglass", headingText: "팩트 체크")
                    DetailFact(animal: animal)
                }
                
                // 5. external reference
                Group {
                    DetailHead(headingImage: "books.vertical", headingText: "참고 자료")
                    ExternalWebLink(animal: animal)
                }
                
                // 6. Copyright
                Text(animal.copyright)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)
                
            }//: VStack(spacing: 20)
            .navigationTitle("\(animal.name) 자세히 알아보기")
            .navigationBarTitleDisplayMode(.inline)
            
        }//: ScrollView
        
    }
}

#Preview {
    NavigationStack {
        DetailView(animal: Animal.sampleAnimal)
    }
    
}
