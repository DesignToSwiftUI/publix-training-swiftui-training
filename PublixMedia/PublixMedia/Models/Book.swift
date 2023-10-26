//
//  Book.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import Foundation

struct Book: Identifiable, Hashable {
    let id = UUID()
    
    var name: String
    var author: String
    var category: String
    var publishDate: String
    var image: String
    var abstract: String
}

extension Book {
    static var `default`: Book {
        Book(name: "Game of Thrones", author: "George Martin", category: "Fantasy", publishDate: "Jan. 99, 2099", image: "game-of-thrones", abstract: "Abstract goes here")
    }
    
    static var book2: Book {
        Book(name: "Game of Thrones II", author: "George Martin", category: "Fantasy", publishDate: "Jan. 99, 2099", image: "game-of-thrones", abstract: "Abstract goes here")
    }
}
