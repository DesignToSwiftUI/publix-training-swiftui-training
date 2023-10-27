//
//  MoviesEndpoint.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation

enum MoviesEndpoint {
    case all
}

extension MoviesEndpoint: Endpoint {
    var path: String {
        switch self {
        case .all: return "/movies"
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
