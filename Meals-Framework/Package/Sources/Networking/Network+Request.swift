//
//  Network+Request.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Network {
    
    public protocol Request {
        
        var host: String { get }
        var scheme: String { get }
        var path: String { get }
        var method: Network.RequestMethod { get }
        var header: [String: String]? { get }
        var body: [String: String]? { get }
        var queryItems: [URLQueryItem]? { get }
    }
}
