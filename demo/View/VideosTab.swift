//
//  VideosTab.swift
//  demo
//
//  Created by Sri on 02/07/22.
//

import SwiftUI

struct VideosTab: View {
    
    @ObservedObject var viewModel = VideoViewModel()
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            NavigationView {
                List(videos) { video in
                    NavigationLink(destination: PopUpView()) {
                        
                        HStack {
                            Image(video.image)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))

                            VStack(alignment: .leading) {
                                Text("\(video.title)")
                                    .font(.system(size: 18, weight: .bold))
                                Text("\(video.subtitle1)")
                                    .fontWeight(.ultraLight)
                            }
                            Spacer()
                        }
                    }
                }
                .navigationBarTitle("Videos")
            }
            Menu("Edit".uppercased()) {
                Button { viewModel.reverseOrder() }
                label: { Text("Reverse") }
                Button { viewModel.shuffleOrder() }
                label: { Text("Shuffle") }
            }
            .padding()
        }
    }
}

struct VideosTab_Previews: PreviewProvider {
    static var previews: some View {
        VideosTab()
    }
}


