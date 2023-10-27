//
//  HTTPClient.swift
//  PublixMedia
//
//  Created by Craig Clayton on 10/27/23.
//

import Foundation

protocol HTTPClient {
    func request<T: Decodable>(endpoint: Endpoint, responseModel: T.Type) async -> Result<T, RequestError>
}

extension HTTPClient {
    func request<T: Decodable>(
        endpoint: Endpoint,
        responseModel: T.Type
    ) async -> Result<T, RequestError> {
        var urlComponents  = URLComponents(string: "http://127.0.0.1")!
        urlComponents.scheme = endpoint.scheme
        urlComponents.path = endpoint.path
        urlComponents.port = endpoint.port
        
        guard let url = urlComponents.url else {
            return .failure(.invalidURL)
        }
        
        let request = URLRequest(url: url)
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            guard let response = response as? HTTPURLResponse else {
                return .failure(.invalidResponse)
            }
            
            switch response.statusCode {
            
            case 200...299:
                guard let decodeResponse = try? JSONDecoder().decode(responseModel, from: data) else {
                    return .failure(.decodable)
                }
                
                return .success(decodeResponse)
            case 401: return .failure(.invalidResponse)
            default: return .failure(.invalidResponse)
            }
            
        } catch {
            return .failure(.invalidURL)
        }
    }
}
