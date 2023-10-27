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
    var gameService = GameService()
    var games = [Game]()
    
    func initializeData() async {
        do {
            games = try await fetchGames() ?? []
            dump(games)
        } catch {
            debugPrint("unable to data from mockoon \(error)")
        }
    }
    
    func fetchGames() async throws -> [Game]? {
        var games: [Game] = []
        let results = await gameService.fetchGames()
        
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
}
