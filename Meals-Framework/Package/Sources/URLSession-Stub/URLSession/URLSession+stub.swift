//
//  URLSession+stub.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension URLSession {
    
    public static var stub: URLSession = {
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [URLProtocolStub.self]
        return URLSession(configuration: config)
    }()
}
