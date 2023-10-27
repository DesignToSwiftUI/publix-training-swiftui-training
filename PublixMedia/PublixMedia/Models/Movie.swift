//
//  Movie.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import Foundation

struct Movie: Identifiable, Hashable, Decodable {
    var id = UUID()
    
    var title: String
    var isFeatured: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case isFeatured = "featured"
    }
//    var category: String
//    var rating: String
//    var abstract: String
    
//    init(title: String, category: String, rating: String, abstract: String) {
//        self.title = title
//        self.category = category
//        self.rating = rating
//        self.abstract = abstract
//    }
}

extension Movie {
    static var `default`: Movie = {
        Movie(title: "Jaws II")
    }()
}
