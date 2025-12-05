//
//  CoverImage.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/5/25.
//

import Foundation

struct CoverImage: Identifiable, Codable {
    let id: Int
    let name: String
    
    static let sampleCoverImage: CoverImage = CoverImage(
        id : 1,
        name : "cover-tiger"
    )
}
