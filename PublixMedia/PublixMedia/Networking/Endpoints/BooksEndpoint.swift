//
//  BooksEndpoint.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation

enum BooksEndpoint {
    case all
}

extension BooksEndpoint: Endpoint {
    var path: String {
        switch self {
        case .all: return "/books"
        }
    }
    
    var method: RequestMethod {
        switch self {
        case .all: return .get
        }
    }
    
    var header: [String: String]? {
        switch self {
        case .all:
            return [
                "Content-Type": "application/json;charset=utf-8"
            ]
        }
    }
    
    var body: [String : String]? {
        switch self {
        case .all: return nil
        }
    }
}
