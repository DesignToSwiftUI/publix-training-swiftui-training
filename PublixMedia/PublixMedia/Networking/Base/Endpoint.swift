//
//  Endpoint.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation

protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var method: RequestMethod { get }
    var header: [String: String]? { get }
    var body: [String: String]? { get }
    var port: Int { get }
}

extension Endpoint {
    var scheme: String {
        return "http"
    }
    
    var host: String {
        return "127.0.0.1"
    }
    
    var port: Int {
        return 3000
    }
    
//    var header: [String: String]? {
//        return [
//            "Content-Type": "application/json;charset=utf-8"
//        ]
//    }
}
