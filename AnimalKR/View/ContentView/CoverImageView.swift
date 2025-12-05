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
                    .resizable()
                    .scaledToFill()
                    .frame(height: ScreenSize.width)
                
            }//: LOOP
        } //: TabView
        .tabViewStyle(.page)
    }
}

#Preview {
    CoverImageView(vm: AnimalViewModel())
        .previewLayout(.fixed(width: 400, height: 300))
}

