//
//  FeaturedMoviesView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct FeaturedMoviesView: View {
    let title: String
    var movies: [Movie] = []
    
    var body: some View {
        VStack {
            SectionHeaderView(title: title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(0 ..< 5) { item in
                        FeaturedMovieItemView()
                    }
                }
            }
        }
    }
}

#Preview {
    FeaturedMoviesView(title: "Featured Movies")
}
