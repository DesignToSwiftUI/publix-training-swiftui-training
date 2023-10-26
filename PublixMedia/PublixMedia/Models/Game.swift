//
//  Game.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import Foundation

enum GameStatusType: String {
    case available = "Available"
    case soon = "Coming Soon"
    case none
}

struct Game: Identifiable, Hashable {
    let id = UUID()
    
    var name: String
    var status: GameStatusType
    var image: String
    var abstract: String
}

extension Game {
    static var `default`: Game {
        Game(name: "NBA2K24", status: .available, image: "nba", abstract: "Abstract Goes here")
    }
}
