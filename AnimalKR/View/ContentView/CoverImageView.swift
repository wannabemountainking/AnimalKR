//
//  CoverImageView.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/5/25.
//

import SwiftUI
import Combine

struct CoverImageView: View {
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        TabView {
            ForEach(vm.coverImages) { coverImage in
                Image(coverImage.name)
            }
        }
    }
}

#Preview {
    CoverImageView(vm: AnimalViewModel())
}
