//
//  Game.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import Foundation

enum GameStatusType: String, Decodable {
    case available = "Available"
    case soon = "Coming Soon"
    case none
}

struct Game: Identifiable, Hashable, Decodable {
    var id = UUID()
    var title: String
    var isFeatured: Bool = false
//    var status: GameStatusType
//    var image: String
//    var abstract: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case isFeatured = "featured"
    }
}

extension Game {
    static var `default`: Game {
//        Game(title: "NBA2K24", status: .available, image: "nba", abstract: "Abstract Goes here")
        Game(title: "NBA2K24")
    }
}
