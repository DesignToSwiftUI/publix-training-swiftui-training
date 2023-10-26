//
//  Challenge03.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct Challenge03: View {
    var body: some View {
        NavigationStack {
            List {
                VStack(spacing: 20) {
                    ShortArticleItem(article: Article.short)
                    FullArticleItem(article: Article.full)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                .listRowBackground(Color.clear)
            }
            .navigationTitle("Discover")
        }
    }
}

#Preview {
    Challenge03()
}
