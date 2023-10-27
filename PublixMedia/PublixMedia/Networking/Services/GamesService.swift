//
//  GameService.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation

protocol GamesServiceable {
    func fetchGames() async -> Result<[Game], RequestError>
}

struct GamesService: HTTPClient, GamesServiceable {
    func fetchGames() async -> Result<[Game], RequestError> {
        return await request(endpoint: GamesEndpoint.all, responseModel: [Game].self)
    }
}
