//
//  GameDetailView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct GameDetailView: View {
    let game: Game
    var body: some View {
        Text("Title: \(game.title)")
    }
}

#Preview {
    GameDetailView(game: Game.default)
}
