//
//  TabbedView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct TabbedView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tag(0)
                .tabItem {
                    Label("Dashboard", systemImage: "house")
                }
            
            GamesView()
                .tag(1)
                .tabItem {
                    Label("Games", systemImage: "gamecontroller")
                }
            
            MoviesView()
                .tag(2)
                .tabItem {
                    Label("Movies", systemImage: "popcorn")
                }
            
            BooksView()
                .tag(3)
                .tabItem {
                    Label("Books", systemImage: "book")
                }
        }
    }
}

#Preview {
    TabbedView()
}
