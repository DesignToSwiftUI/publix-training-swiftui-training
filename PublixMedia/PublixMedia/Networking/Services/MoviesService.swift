//
//  MoviesService.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation

protocol MoviesServiceable {
    func fetchMovies() async -> Result<[Movie], RequestError>
}

struct MoviesService: HTTPClient, MoviesServiceable {
    func fetchMovies() async -> Result<[Movie], RequestError> {
        return await request(endpoint: MoviesEndpoint.all, responseModel: [Movie].self)
    }
}
