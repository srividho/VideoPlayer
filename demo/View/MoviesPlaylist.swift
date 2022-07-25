//
//  MoviesPlaylist.swift
//  demo
//
//  Created by Sri on 07/07/22.
//

import SwiftUI
import AVKit

struct MoviesPlaylist: View {
    
    @State var i = 15
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Toast - Animated Short Film by GULU", withExtension: "mp4")!)
    
    var body: some View {
        
        ScrollView{
            VStack {
                MoviesVideo(player: player)
                    .onAppear() {player.play()
                        player.isMuted = true
                    }
                    .onDisappear() {player.pause()}
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3, alignment: .top)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(16..<21) {i in
                                Button {
                                    switch i {
                                    case 16 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "The Sea Beast | Official Trailer | Netflix", withExtension: "mp4")!)
                                    case 17 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Strange World | Teaser Trailer | Walt Disney Animation Studios", withExtension: "mp4")!)
                                    case 18 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "I Am Groot | Official Trailer | Disney+", withExtension: "mp4")!)
                                    case 19 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Baymax! | Official Trailer 2 | Disney+", withExtension: "mp4")!)
                                    case 20 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Toast - Animated Short Film by GULU", withExtension: "mp4")!)
                                    default:
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Toast - Animated Short Film by GULU", withExtension: "mp4")!)
                                    }
                                }
                                label: {
                                    MoviesCard(image: "\(i)", name: "Movies video")
                                }
                                .foregroundColor(.black)
                            }
                        }
                    }.padding(10)
            }
    }
}

struct MoviesPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        MoviesPlaylist()
    }
}

struct MoviesVideo: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MoviesVideo>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = true
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<MoviesVideo>) {
            uiViewController.player = player
    }
    
}


struct MoviesCard : View {
    var image = ""
    var name = ""
    var body: some View {
        HStack {
            Image(image).resizable().frame(width: 120, height: 80)
            VStack(alignment: .leading, content: {
                Text(name).fontWeight(.heavy)
                Text("Movies")
            })
            .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
            VStack {
                Button(action: {}) {
                   Image(systemName: "play.circle.fill").resizable().frame(width: 20,                          height: 20).foregroundColor(.black)
                    Spacer()
                }.padding()
            }
        }
    }
}
