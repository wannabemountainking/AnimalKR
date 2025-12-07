//
//  AnimalViewModel.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/5/25.
//

import SwiftUI
import Combine

class AnimalViewModel: ObservableObject {

    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    @Published var video: [Video] = Bundle.main.decode("videos.json")
    
    //GalleryView
    @Published var selectedAnimal: String = "tiger"
    
    //GalleryView LazyVGrid
    @Published var gridLayout: [GridItem] = [GridItem(.flexible())]
    @Published var gridColumns: Double = 4
    
    init() {
        gridSwitch()
    }
    
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumns))
    }
}
