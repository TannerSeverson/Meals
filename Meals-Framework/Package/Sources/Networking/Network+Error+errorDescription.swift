//
//  Network+Error+errorDescription.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Network.Error: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
            case .decoding(let decodingError):
                decodingError.errorDescription
                ?? "Decoding Error"
            case .encoding(let encodingError):
                encodingError.errorDescription
                ?? "Encoding Error"
            case .missingURL:
                "Missing URL"
            case .noHTTPURLResponse:
                "No Response"
            case .status(let code):
                "Status Code \(code)"
            case .unexpected(let error):
                "Unexpected Error \(error)"
            case .unknown(let string):
                string
        }
    }
}
