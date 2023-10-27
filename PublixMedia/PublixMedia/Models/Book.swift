//
//  Book.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import Foundation

struct Book: Identifiable, Hashable, Decodable {
    var id = UUID().uuidString
    
    var title: String
    var isFeatured: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case isFeatured = "featured"
    }
    
//    var author: String
//    var category: String
//    var publishDate: String
//    var image: String
//    var abstract: String
}

extension Book {
    static var `default`: Book {
        Book(title: "Game of Thrones")
//        Book(name: "Game of Thrones", author: "George Martin", category: "Fantasy", publishDate: "Jan. 99, 2099", image: "game-of-thrones", abstract: "Abstract goes here")
    }
    
    static var book2: Book {
        Book(title: "Game of Thrones")
//        Book(name: "Game of Thrones II", author: "George Martin", category: "Fantasy", publishDate: "Jan. 99, 2099", image: "game-of-thrones", abstract: "Abstract goes here")
    }
}
