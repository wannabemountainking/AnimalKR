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
        VStack {
            CoverImageView(vm: vm)
        }

    }
}

#Preview {
    ContentView(vm: AnimalViewModel())
}
