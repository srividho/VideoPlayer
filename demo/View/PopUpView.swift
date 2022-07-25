//
//  PopUpView.swift
//  demo
//
//  Created by Sri on 02/07/22.
//

import SwiftUI
import AVKit

struct PopUpView: View {
    
    var player = AVPlayer(url: Bundle.main.url(forResource: "How Bill Gates reads books", withExtension: "mp4")!)
    
    var body: some View {
        VStack{
            PopupVideo(player: player)
                .onAppear() {player.play()}
                .onDisappear() {player.pause()}
        }
        .edgesIgnoringSafeArea(.all)
     }
    
  }


struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView()
    }
}

struct PopupVideo: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<PopupVideo>) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = true
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<PopupVideo>) {
            
    }
}


