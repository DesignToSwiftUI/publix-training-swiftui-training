//
//  PlaceholderView.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/25/23.
//

import SwiftUI

struct PlaceholderView: View {
    let image: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(.gray)
                .frame(width: 180, height: 120)
            Image(systemName: image)
        }
    }
}

#Preview {
    PlaceholderView(image: "photo")
}
