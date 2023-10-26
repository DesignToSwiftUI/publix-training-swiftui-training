//
//  ImageBasics.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/23/23.
//

import SwiftUI

struct ImageBasics: View {
    var body: some View {
        Image("placeholder")
            .resizable()
            .frame(width: 200, height: 200)
    }
}

#Preview {
    ImageBasics()
}
