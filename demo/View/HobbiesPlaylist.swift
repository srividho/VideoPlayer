//
//  HobbiesPlaylist.swift
//  demo
//
//  Created by Sri on 06/07/22.
//

import SwiftUI
import AVKit

struct HobbiesPlaylist: View {
        
    @State var i = 5
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Hobbies", withExtension: "mp4")!)
        
    var body: some View {
        ScrollView{
            VStack {
                Hobbiesvideo(player: player)
                    .onAppear() {player.play()
                        player.isMuted = true
                    }
                    .onDisappear() {player.pause()}
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3, alignment: .top)
            }
                
        ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(6..<11) {i in
                        Button {
                            switch i {
                                case 6 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Hobbies Are Important", withExtension: "mp4")!)
                                case 7 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Here are 7 hobbies that science says will make you smarter", withExtension: "mp4")!)
                                case 8 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "HOW TO FIND A HOBBY | ALL YOU NEED TO KNOW", withExtension: "mp4")!)
                                case 9 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Learn English_ What's your favourite hobby? - Australia Plus", withExtension: "mp4")!)
                                case 10 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Hobbies", withExtension: "mp4")!)
                                default:
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Hobbies", withExtension: "mp4")!)
                                        }
                                    }
                                label: {
                                    Hobbiescard(image: "\(i)", name: "Hobbies video")
                                    }
                                    .foregroundColor(.black)
                                }
                            }
                        }.padding(10)
                    }
                }
            }


struct HobbiesPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        HobbiesPlaylist()
    }
}

struct Hobbiesvideo: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Hobbiesvideo>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = true
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<Hobbiesvideo>) {
            uiViewController.player = player
    }
}


struct Hobbiescard : View {
    var image = ""
    var name = ""
    var body: some View {
        HStack {
            Image(image).resizable().frame(width: 120, height: 80)
            VStack(alignment: .leading, content: {
                Text(name).fontWeight(.heavy)
                Text("Hobbies")
            })
            .frame(width: UIScreen.main.bounds.width - 170, alignment: .leading)
            VStack {
                Button(action: {}) {
                   Image(systemName: "play.circle.fill").resizable().frame(width: 25,                          height: 25).foregroundColor(.black)
                    Spacer()
                }.padding()
            }
        }
    }
}




