//
//  CreditsView.swift
//  Africa fauna
//
//  Created by Erasmo J.F Da Silva on 18/07/21.
//
//  Copyright @ Erasmo J.F Da Silva
//  All right reserved
//  Better Apps ♡ Less Code


import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
     Copyright @ Erasmo J.F Da Silva
     All right reserved
     Better Apps ♡ Less Code
     """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }//VStack
        .padding()
        .opacity(0.4)
    }
}

// MARK: - PREVIEW

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
