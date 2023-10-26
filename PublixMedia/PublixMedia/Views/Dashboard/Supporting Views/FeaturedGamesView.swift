//
//  FeaturedGamesView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct FeaturedGamesView: View {
    let title: String
    var games: [Game] = []
    
    var body: some View {
        VStack {
            SectionHeaderView(title: title)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(0 ..< 5) { item in
                        FeaturedGameItem()
                    }
                }
            }
        }
    }
}

#Preview {
    FeaturedGamesView(title: "Featured Games")
}
