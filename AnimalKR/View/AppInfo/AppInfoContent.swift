//
//  AppInfoContent.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/8/25.
//

import SwiftUI

struct AppInfoContent: View {
    
    //property
    var name: String
    // optional property
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 5)
            
            HStack {
                Text(name)
                    .font(.title3)
                    .foregroundStyle(.gray)
                if content != nil {
                    // 1. name, content가 모두 있는 경우
                    Text(content ?? "no value")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.primary)
                        .hTrailing()
                } else if (linkLabel != nil) && (linkDestination != nil) {
                    // 2. LinkLabel, LinkDestination 이 있는 경우
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Spacer()
                        Text(linkLabel!)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        }//: Link
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundStyle(.accent)
                    
                } else {
                    EmptyView()
                }
            }//: HStack
        }//: VStack
    }//: body
}

#Preview {
    Group {
        AppInfoContent(name: "sample", content: "Jacob Ko")
        AppInfoContent(name: "sample2", linkLabel: "Jacob's Blog", linkDestination: "jacobko.info")
    }
}
