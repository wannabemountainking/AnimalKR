//
//  GalleryView.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/5/25.
//

import SwiftUI

struct GalleryView: View {
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(spacing: 30) {
                    // 1. image
                    Image(vm.selectedAnimal)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.accent.opacity(0.8), lineWidth: 3)
                        )
                        
                    // 2. Slider
                    Slider(value: $vm.gridColumns, in: 2...4, step: 1)
                        .padding()
                        .onChange(of: vm.gridColumns) { value in
                            withAnimation(Animation.easeInOut(duration: 1.0)) {
                                vm.gridSwitch()
                            }
                        }
                    
                    // 3. Grid
                    LazyVGrid(columns: vm.gridLayout) {
                        ForEach(vm.animals) { animal in
                            Image(animal.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                                .onTapGesture {
                                    withAnimation(.spring(duration: 1.0)) {
                                        vm.selectedAnimal = animal.image
                                    }
                                }
                        }//: Loop
                    }//: LazyVGrid
                    
                }// VStack
                .padding()
            }//: ScrollView
            .scrollIndicators(.hidden)
            .navigationTitle("갤러리")
            .navigationBarTitleDisplayMode(.inline)
        }//: NavigationStack
    }
}

#Preview {
    GalleryView(vm: AnimalViewModel())
}
