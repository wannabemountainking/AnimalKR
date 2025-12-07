//
//  AnimalViewModel.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/5/25.
//

import Foundation
import Combine

class AnimalViewModel: ObservableObject {

    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    @Published var video: [Video] = Bundle.main.decode("videos.json")
}
