//
//  HeadingView.swift
//  Africa fauna
//
//  Created by Erasmo J.F Da Silva on 14/07/21.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
     
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
            
        }// HStack
        .padding(.vertical)
    }
}

// MARK: - PREVIEW


struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
