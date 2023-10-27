//
//  FeaturedBookItem.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct FeaturedBookItem: View {
    let book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray)
            .frame(width: 150, height: 200)
            Text(book.title)
                .font(.headline)
            Text("Fyodor Dostoyevsky")
                .font(.subheadline)
        }
    }
}

#Preview {
    FeaturedBookItem(book: Book.default)
}
