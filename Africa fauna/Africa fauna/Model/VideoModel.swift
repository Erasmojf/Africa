//
//  VideoModel.swift
//  Africa fauna
//
//  Created by Erasmo J.F Da Silva on 14/07/21.
//

import Foundation


struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
