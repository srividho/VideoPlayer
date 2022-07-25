//
//  LearningsPlaylist.swift
//  demo
//
//  Created by Sri on 07/07/22.
//

import SwiftUI
import AVKit

struct LearningsPlaylist: View {
    
    @State var i = 20
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Teaching Tips | Experiential Learning Model", withExtension: "mp4")!)
    
    var body: some View {
        
        ScrollView{
            VStack {
                LearningsVideo(player: player)
                    .onAppear() {player.play()
                        player.isMuted = true
                    }
                    .onDisappear() {player.pause()}
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3, alignment: .top)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(21..<26) {i in
                                Button {
                                    switch i {
                                    case 21 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Online Learning Tips for Students!", withExtension: "mp4")!)
                                    case 22 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "How To Type Faster", withExtension: "mp4")!)
                                    case 23 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "12 Top Learning Tips - Trailer", withExtension: "mp4")!)
                                    case 24 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "6 tips to make the most of your online learning journey", withExtension: "mp4")!)
                                    case 25 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Teaching Tips | Experiential Learning Model", withExtension: "mp4")!)
                                    default:
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Teaching Tips | Experiential Learning Model", withExtension: "mp4")!)
                                    }
                                }
                                label: {
                                    LearningsCard(image: "\(i)", name: "Learnings video")
                                }
                                .foregroundColor(.black)
                            }
                        }
                    }.padding(10)
            }
    }
}

struct LearningsPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        LearningsPlaylist()
    }
}

struct LearningsVideo: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<LearningsVideo>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = true
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<LearningsVideo>) {
            uiViewController.player = player
    }
    
}


struct LearningsCard : View {
    var image = ""
    var name = ""
    var body: some View {
        HStack {
            Image(image).resizable().frame(width: 120, height: 80)
            VStack(alignment: .leading, content: {
                Text(name).fontWeight(.heavy)
                Text("Learnings")
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
