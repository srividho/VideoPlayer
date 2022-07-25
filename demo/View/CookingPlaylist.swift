//
//  CookingPlaylist.swift
//  demo
//
//  Created by Sri on 06/07/22.
//

import SwiftUI
import AVKit

struct CookingPlaylist: View {
    
    @State var i = 0
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Try this 'EGG, POTATO AND TOMATO' breakfast recipe. Pwede i-ulam sa kanin o i-palaman sa tasty bread", withExtension: "mp4")!)
    
    var body: some View {
        
        ScrollView{
            VStack {
                CookingVideo(player: player)
                    .onAppear() {player.play()
                        player.isMuted = true
                    }
                    .onDisappear() {player.pause()}
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3, alignment: .top)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(1..<6) {i in
                                Button {
                                    switch i {
                                    case 1 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "How to Record Instagram-Worthy Cooking Videos | Filmmaking Tips", withExtension: "mp4")!)
                                    case 2 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "How to Convert Recipes Using a Conversion Factor | Easy Cooking Tips", withExtension: "mp4")!)
                                    case 3 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Gordon Ramsay's Top 10 Tips for Cooking the Perfect Steak", withExtension: "mp4")!)
                                    case 4 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "1 minute healthy sweet recipe | easy sweet recipe | evening snack recipe", withExtension: "mp4")!)
                                    case 5 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Try this 'EGG, POTATO AND TOMATO' breakfast recipe. Pwede i-ulam sa kanin o i-palaman sa tasty bread", withExtension: "mp4")!)
                                    default:
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Try this 'EGG, POTATO AND TOMATO' breakfast recipe. Pwede i-ulam sa kanin o i-palaman sa tasty bread", withExtension: "mp4")!)
                                    }
                                }
                                label: {
                                    CookingCard(image: "\(i)", name: "Cooking video")
                                }
                                .foregroundColor(.black)
                            }
                        }
                    }.padding(10)
            }
    }
}

struct CookingPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        CookingPlaylist()
    }
}

struct CookingVideo: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CookingVideo>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = true
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<CookingVideo>) {
            uiViewController.player = player
            player.pause()
    }
    
}


struct CookingCard : View {
    var image = ""
    var name = ""
    var body: some View {
        HStack {
            Image(image).resizable().frame(width: 120, height: 80)
            VStack(alignment: .leading, content: {
                Text(name).fontWeight(.heavy)
                Text("Cooking")
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
