//
//  Network+Error.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Network {
    
    public enum Error: Swift.Error, Equatable {
        
        case decoding(DecodingError)
        case encoding(EncodingError)
        case missingURL
        case noHTTPURLResponse
        case status(Int)
        case unexpected(Swift.Error)
        case unknown(String)
    }
}

extension Network.Error {
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        
        let lhsNSError = lhs as NSError
        let rhsNSError = rhs as NSError
        
        return lhsNSError.domain == rhsNSError.domain
        && lhsNSError.code == rhsNSError.code
        && "\(lhs)" == "\(rhs)"
    }
}
