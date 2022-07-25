//
//  WorkoutPlaylist.swift
//  demo
//
//  Created by Sri on 07/07/22.
//

import SwiftUI
import AVKit

struct WorkoutPlaylist: View {
    
    @State var i = 10
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Can You Work Out While Sore?", withExtension: "mp4")!)
    
    var body: some View {
        ScrollView{
            VStack {
                WorkoutVideo(player: player)
                    .onAppear() {player.play()
                        player.isMuted = true
                    }
                    .onDisappear() {player.pause()}
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3, alignment: .top)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(11..<16) {i in
                            Button {
                                switch i {
                                case 11 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Cardio vs. strength training_ What you need to know", withExtension: "mp4")!)
                                case 12 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Josh's WORKOUT motivation (close enough 2) - FOCUS on YOUSELF motivation", withExtension: "mp4")!)
                                case 13 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Muscle Recovery | 5 Ways to Reduce Soreness", withExtension: "mp4")!)
                                case 14 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "What happens inside your body when you exercise?", withExtension: "mp4")!)
                                case 15 :
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Can You Work Out While Sore?", withExtension: "mp4")!)
                                default:
                                    player = AVPlayer(url: Bundle.main.url(forResource: "Can You Work Out While Sore?", withExtension: "mp4")!)
                                }
                            }
                            label: {
                                WorkoutCard(image: "\(i)", name: "Workout video")
                            }
                            .foregroundColor(.black)
                           }
                        }
                    }.padding(10)
            }
    }
}

struct WorkoutPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutPlaylist()
    }
}

struct WorkoutVideo: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<WorkoutVideo>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = true
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<WorkoutVideo>) {
            uiViewController.player = player
    }
    
}


struct WorkoutCard : View {
    var image = ""
    var name = ""
    var body: some View {
        HStack {
            Image(image).resizable().frame(width: 120, height: 80)
            VStack(alignment: .leading, content: {
                Text(name).fontWeight(.heavy)
                Text("Workout")
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
