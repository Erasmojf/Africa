//
//  CenterModifier.swift
//  Africa fauna
//
//  Created by Erasmo J.F Da Silva on 18/07/21.
//  Copyright @ Erasmo J.F Da Silva
//  All right reserved
//  Better Apps ♡ Less Code

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
