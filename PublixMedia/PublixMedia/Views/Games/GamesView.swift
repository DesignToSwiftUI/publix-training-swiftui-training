//
//  GamesView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct GamesView: View {
    @Environment(DataManager.self) private var manager
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(manager.games) { game in
                    NavigationLink(game.title, value: game)
                }
            }
            .navigationDestination(for: Game.self) { game in
                GameDetailView(game: game)
            }
        }
    }
}

#Preview {
    GamesView()
        .environment(DataManager())
}
