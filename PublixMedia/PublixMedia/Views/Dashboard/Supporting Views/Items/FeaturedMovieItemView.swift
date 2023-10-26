//
//  FeaturedMovieItemView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct FeaturedMovieItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray)
            .frame(width: 330, height: 180)
            
            Text("CATEGORY")
                .foregroundStyle(Color.blue)
                .bold()
            
            Text("Movie Title Goes Here")
            Text("R")
        }
    }
}

#Preview {
    FeaturedMovieItemView()
}
