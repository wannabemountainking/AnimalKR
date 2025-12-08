//
//  AppInfoLabel.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/8/25.
//

import SwiftUI

struct AppInfoLabel: View {
    
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Image(systemName: labelImage)
                .hTrailing()
        }
    }
}

#Preview {
    AppInfoLabel(labelText: "AppInfoHead", labelImage: "gear")
}
