//
//  VideoPlayerView.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/7/25.
//

import SwiftUI

struct VideoPlayerView: View {
    var video: Video
    
    var body: some View {
        NavigationStack {
            VStack {
                YouTubeView(videoID: video.videoid)
            }//: VStack
            .navigationTitle(video.name)
            .navigationBarTitleDisplayMode(.inline)
        }//: NavigationStack
    }//: body
}

#Preview {
    VideoPlayerView(video: Video.sampleVideo)
}
