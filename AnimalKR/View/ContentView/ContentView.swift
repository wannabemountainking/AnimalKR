//
//  ContentView.swift
//  AnimalKR
//
//  Created by yoonie on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationStack {
            List {
                // 1. Cover Image - Hero Image
                 CoverImageView(vm: vm)
                    .frame(height: ScreenSize.height * 0.4)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                // 2. Animal list
                ForEach(vm.animals) { animal in
                    NavigationLink {
                        // destination
                        
                    } label: {
                        // list label
                        AnimalListView(animal: animal)
                            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    } //: NavigationLink

                }//: LOOP
                //CreditView
                CreditView()
                    .hCenter()
            }//: LIST
            .navigationTitle("멸종 위기 동물들")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }//: NAVIGATIONSTACK
        
    }
}

#Preview {
    ContentView(vm: AnimalViewModel())
}
// 1.Cover Image - hero image
