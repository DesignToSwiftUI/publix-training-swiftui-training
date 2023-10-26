//
//  MovieDetailView.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/26/23.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        Text("Title: \(movie.title)")
    }
}

#Preview {
    MovieDetailView(movie: Movie.default)
}
