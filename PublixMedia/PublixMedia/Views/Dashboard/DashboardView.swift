//
//  DashboardView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct DashboardView: View {
    @Environment(DataManager.self) private var manager
    @State private var path = NavigationPath()
    
    var body: some View {
        content
    }
    
    var content: some View {
        VStack {
            navigation
            //footer
        }
    }
    
    var navigation: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack(spacing: 50) {
                    FeaturedBooksView(title: "Featured Books", books: manager.featuredBooks)
                    FeaturedGamesView(title: "Featured Games", games: manager.featuredGames)
                    FeaturedMoviesView(title: "Featured Movies", movies: manager.featuredMovies)
                }
                .padding(.top, 30)
                .safeAreaPadding(.horizontal)
            }
            .navigationTitle("Discover")
            .navigationDestination(for: Movie.self) { movie in
                MovieDetailView(movie: movie)
            }
            .navigationDestination(for: Game.self) { game in
                GameDetailView(game: game)
            }
            .navigationDestination(for: Book.self) { book in
                BookDetailView(book: book)
            }
        }
    }
    
    var footer: some View {
        VStack {
            Text("number of detail views on the stack \(path.count)")
            Button(action: { path = NavigationPath() }) {
                Text("Dashboard")
            }
            
            Button(action: { back() }) {
                Text("Back")
            }
        }
    }
    func back() {
        if path.count > 0 {
            path.removeLast()
        }
    }
}

#Preview {
    DashboardView()
}


//            List {
//                NavigationLink("Go to movie detail", value: Movie.default)
//                NavigationLink("Go to game detail", value: Game.default)
//                NavigationLink("Go to book detail", value: Book.default)
//            }
