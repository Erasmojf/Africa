//
//  MapAnnotationView.swift
//  Africa fauna
//
//  Created by Erasmo J.F Da Silva on 16/07/21.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }// ZStack
        .onAppear {
            withAnimation(Animation.easeIn(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

// MARK: - PREVIEW

struct MapAnnotationView_Previews: PreviewProvider {
    static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
