//
//  FeaturedBookView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct FeaturedBooksView: View {
    let title: String
    var books: [Book] = []
    
    var body: some View {
        VStack {
            SectionHeaderView(title: title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(books) { book in
                        FeaturedBookItem(book: book)
                    }
                }
            }
        }
    }
}

#Preview {
    FeaturedBooksView(title: "Featured Books")
}
