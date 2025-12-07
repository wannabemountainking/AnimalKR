//
//  VideoView.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/5/25.
//

import SwiftUI

struct VideoView: View {
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.video) { video in
                    NavigationLink {
                        // destination
                        VideoPlayerView(video: video)
                    } label: {
                        VideoListItem(video: video)
                    }//: NavigationLink
                }//: Loop
            }//: List
            .listStyle(.plain)
            .navigationTitle("비디오")
            .navigationBarTitleDisplayMode(.inline)
        }//: NavigationStack
    }
}

#Preview {
    VideoView(vm: AnimalViewModel())
}
