//
//  ContentView.swift
//  demo
//
//  Created by Sri on 02/07/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {

        TabView {
            ///video tab
            VideosTab()
                .tabItem {
                    Image(systemName: "video.square")
                    Text("Videos")
                }
            ///playlist tab
            PlayListTab()
                .tabItem {
                    Image(systemName: "music.note.list")
                    Text("Playlist")
                }
            
          }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

