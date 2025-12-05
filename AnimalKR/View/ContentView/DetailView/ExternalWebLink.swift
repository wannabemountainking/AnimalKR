//
//  ExternalWebLink.swift
//  AnimalKR
//
//  Created by yoonie on 12/7/25.
//

import SwiftUI

struct ExternalWebLink: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("멸종 위기 야생동물 포털")
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: URL(string: animal.link)!) {
                        Text(animal.name)
                    }//: Link
                    .foregroundStyle(.accent)
                }//: Group
            }//: HStack
        }//: GroupBox
    }
}

#Preview {
    ExternalWebLink(animal: Animal.sampleAnimal)
}
