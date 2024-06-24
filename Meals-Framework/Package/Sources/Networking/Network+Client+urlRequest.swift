//
//  Network+Client+urlRequest.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Network.Client {
    
    static func urlRequest(
        for request: Network.Request
    ) throws -> URLRequest {
        
        var urlComponents = URLComponents()
        
        urlComponents.scheme = request.scheme
        urlComponents.host = request.host
        urlComponents.path = request.path
        urlComponents.queryItems = request.queryItems
        
        guard let url = urlComponents.url else {
            throw Network.Error.missingURL
        }
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.httpMethod = request.method.rawValue.uppercased()
        urlRequest.allHTTPHeaderFields = request.header
        
        if let body = request.body {
            do {
                urlRequest.httpBody = try JSONEncoder().encode(body)
            } catch {
                if let error = error as? EncodingError {
                    throw Network.Error.encoding(error)
                } else {
                    throw Network.Error.unexpected(error)
                }
            }
        }
        
        return urlRequest
    }
}
