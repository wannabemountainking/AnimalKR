//
//  VideoListView.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/7/25.
//

import SwiftUI

struct VideoListItem: View {
    var video: Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.id)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                    .shadow(radius: 5)
            }//: ZStack
            VStack(spacing: 10) {
                Text(video.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                    .hLeading()
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }//: VStack
            
        }//; HStack
    }//: body
}

#Preview {
    VideoListItem(video: Video.sampleVideo)
}
