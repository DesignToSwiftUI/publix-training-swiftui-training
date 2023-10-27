//
//  BookService.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation

protocol BooksServiceable {
    func fetchBooks() async -> Result<[Book], RequestError>
}

struct BooksService: HTTPClient, BooksServiceable {
    func fetchBooks() async -> Result<[Book], RequestError> {
        return await request(endpoint: BooksEndpoint.all, responseModel: [Book].self)
    }
}
