//
//  DetailFact.swift
//  AnimalKR
//
//  Created by yoonie on 12/6/25.
//

import SwiftUI

struct DetailFact: View {
    
    let animal: Animal

    var body: some View {
        
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }//: LOOP
            } //: TabView
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: GroupBox
        
    }
}

#Preview {
    DetailFact(animal: Animal.sampleAnimal)
}
