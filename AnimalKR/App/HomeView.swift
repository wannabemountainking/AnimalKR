//
//  HomeView.swift
//  AnimalKR
//
//  Created by YoonieMac on 12/5/25.
//

import SwiftUI

struct HomeView: View {
    // property
    @StateObject var vm: AnimalViewModel = AnimalViewModel()
    
    var body: some View {
        TabView {
            //1. ContentView
            ContentView(vm: vm)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            //2. VideoView
            VideoView(vm: vm)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Video")
                }
            //3. GalleryView
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
            //4. AppInfoView
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Info")
                }
        }//: TabView
    }//: body
}

#Preview {
    HomeView(vm: AnimalViewModel())
}
