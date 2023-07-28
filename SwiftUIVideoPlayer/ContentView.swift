//
//  ContentView.swift
//  SwiftUIVideoPlayer
//
//  Created by KARLOS AGUIRRE on 7/27/23.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    let url = URL(string: "https://media1.giphy.com/media/k3yiJHdZrLy0XZ3Qtv/giphy480p.mp4?cid=ecf05e4741u2wxj9q8t837vrntiq3bdpekjj9zsl8mg9thsx&amp;ep=v1_videos_search&amp;rid=giphy480p.mp4&amp;ct=v")!
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: url)) {
                Text("👍🏼 Si te ha gustado puedes\n darle like al video")
                    .bold()
                    .foregroundColor(.white)
                Spacer()
            }
            Text("Aprendiendo SwiftUI - VideoPlayer")
                .bold()
                .padding(60)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
