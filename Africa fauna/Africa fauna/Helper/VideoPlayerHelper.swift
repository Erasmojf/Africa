//
//  VideoPlayerHelper.swift
//  Africa fauna
//
//  Created by Erasmo J.F Da Silva on 15/07/21.
//

import Foundation
import AVKit


var videoPlayer: AVPlayer?

func playBVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
