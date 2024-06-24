//
//  NetworkRequest.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

@testable import Networking

struct NetworkRequest: Network.Request {
    
    var host: String
    
    var scheme: String
    
    var path: String
    
    var method: Networking.Network.RequestMethod
    
    var header: [String : String]?
    
    var body: [String : String]?
    
    var queryItems: [URLQueryItem]?
}
