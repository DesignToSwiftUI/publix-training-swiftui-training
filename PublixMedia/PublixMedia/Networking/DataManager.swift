//
//  DataManager.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation
import Observation

@Observable
final class DataManager {
    var gamesService = GamesService()
    var booksService = BooksService()
    var moviesService = MoviesService()
    
    var games = [Game]()
    var movies = [Movie]()
    var books = [Book]()
    
    var featuredGames = [Game]()
    var featuredMovies = [Movie]()
    var featuredBooks = [Book]()
    
    func initializeData() async {
        do {
            games = try await fetchGames() ?? []
            movies = try await fetchMovies() ?? []
            books = try await fetchBooks() ?? []
            
            featuredGames = games.filter { $0.isFeatured == true }
            featuredBooks = books.filter { $0.isFeatured == true }
            featuredMovies = movies.filter { $0.isFeatured == true }
            
            dump(games)
            dump(movies)
            dump(books)
        } catch {
            debugPrint("unable to data from mockoon \(error)")
        }
    }
    
    func fetchGames() async throws -> [Game]? {
        var games: [Game] = []
        let results = await gamesService.fetchGames()
        
        switch results {
        case .success(let result):
            games = result
            return games
        case .failure(let error):
            dump(error)
            print("ERROR: \(error.localizedDescription)")
            print("ERROR DESC: \(error.description)")
            return []
        }
    }
    
    func fetchMovies() async throws -> [Movie]? {
        var movies: [Movie] = []
        let results = await moviesService.fetchMovies()
        
        switch results {
        case .success(let result):
            movies = result
            return movies
        case .failure(let error):
            dump(error)
            print("ERROR: \(error.localizedDescription)")
            print("ERROR DESC: \(error.description)")
            return []
        }
    }
    
    func fetchBooks() async throws -> [Book]? {
        var books: [Book] = []
        let results = await booksService.fetchBooks()
        
        switch results {
        case .success(let result):
            books = result
            
            return books
        case .failure(let error):
            dump(error)
            print("ERROR: \(error.localizedDescription)")
            print("ERROR DESC: \(error.description)")
            return []
        }
    }
}
