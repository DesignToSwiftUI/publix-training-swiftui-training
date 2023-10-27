//
//  GameService.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation

protocol GameServiceable {
    func fetchGames() async -> Result<[Game], RequestError>
}

struct GameService: HTTPClient, GameServiceable {
    func fetchGames() async -> Result<[Game], RequestError> {
        return await request(endpoint: GamesEndpoint.all, responseModel: [Game].self)
    }
}
