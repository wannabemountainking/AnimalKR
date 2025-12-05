//
//  CreditView.swift
//  AnimalKR
//
//  Created by yoonie on 12/6/25.
//

import SwiftUI

struct CreditView: View {
    
    var body: some View {
        VStack {
            Text("""
                Copyright @ Jacob Ko
                All right reserved
                Created by SwiftUI with MVVM architecture
                """)
            .font(.footnote)
            .fontWeight(.light)
            .multilineTextAlignment(.center)
            .padding()
            .opacity(0.5)
        }
    }
}

#Preview {
    CreditView()
}
