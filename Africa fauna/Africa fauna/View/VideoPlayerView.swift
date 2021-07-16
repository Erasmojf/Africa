//
//  VideoPlayerView.swift
//  Africa fauna
//
//  Created by Erasmo J.F Da Silva on 15/07/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            VideoPlayer(player: playBVideo(fileName: videoSelected, fileFormat: "mp4")) {
               // Text(videoTitle)
            }
            .overlay(
             Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal,8)
                ,alignment: .topLeading
            )
        }// VStack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
