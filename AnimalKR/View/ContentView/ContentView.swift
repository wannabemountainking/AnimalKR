//
//  ContentView.swift
//  AnimalKR
//
//  Created by yoonie on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .vTop()
        .hLeading()
    }
}

#Preview {
    ContentView()
}
