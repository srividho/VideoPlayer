//
//  CartoonsPlaylist.swift
//  demo
//
//  Created by Sri on 07/07/22.
//

import SwiftUI
import AVKit

struct CartoonsPlaylist: View {
    
    @State var i = 25
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Tricky Treat | Pencilmation Cartoon #29", withExtension: "mp4")!)
    
    var body: some View {
        ScrollView{
            VStack {
                CartoonsVideo(player: player)
                    .onAppear() {player.play()
                        player.isMuted = true
                    }
                    .onDisappear() {player.pause()}
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3, alignment: .top)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(26..<31) {i in
                                Button {
                                    switch i {
                                    case 26 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Taxi and I Know It | Pencilmation Cartoon #25", withExtension: "mp4")!)
                                    case 27 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Star Wombs | Pencilmation Cartoon #26", withExtension: "mp4")!)
                                    case 28 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Plight of the Living Dude | Pencilmation Cartoon #24", withExtension: "mp4")!)
                                    case 29 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Flower Power | Pencilmation Cartoon #27", withExtension: "mp4")!)
                                    case 30 :
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Tricky Treat | Pencilmation Cartoon #29", withExtension: "mp4")!)
                                    default:
                                        player = AVPlayer(url: Bundle.main.url(forResource: "Tricky Treat | Pencilmation Cartoon #29", withExtension: "mp4")!)
                                    }
                                }
                                label: {
                                    CartoonsCard(image: "\(i)", name: "Cartoons video")
                                }
                                .foregroundColor(.black)
                            }
                        }
                    }.padding(10)
            }
    }
}

struct CartoonsPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        CartoonsPlaylist()
    }
}

struct CartoonsVideo: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CartoonsVideo>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = true
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<CartoonsVideo>) {
            uiViewController.player = player
    }
    
}


struct CartoonsCard : View {
    var image = ""
    var name = ""
    var body: some View {
        HStack {
            Image(image).resizable().frame(width: 120, height: 80)
            VStack(alignment: .leading, content: {
                Text(name).fontWeight(.heavy)
                Text("Cartoons")
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
