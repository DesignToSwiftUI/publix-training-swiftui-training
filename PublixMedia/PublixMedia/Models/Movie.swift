//
//  Movie.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import Foundation

struct Movie: Identifiable, Hashable {
    let id = UUID()
    
    var title: String
    var category: String
    var rating: String
    var abstract: String
    
    init(title: String, category: String, rating: String, abstract: String) {
        self.title = title
        self.category = category
        self.rating = rating
        self.abstract = abstract
    }
}

extension Movie {
    static var `default`: Movie = {
        Movie(title: "Jaws II", category: "Drama", rating: "R", abstract: "Desc goes here")
    }()
}
