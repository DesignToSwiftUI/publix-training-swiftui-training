//
//  BookDetailView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book
    
    var body: some View {
        Text("Title: \(book.name)")
        
        Divider()
        
        VStack {
            Text("Suggested Games")
            NavigationLink("NBA2K24", value: Game.default)
        }
    }
}

#Preview {
    BookDetailView(book: Book.default)
}
