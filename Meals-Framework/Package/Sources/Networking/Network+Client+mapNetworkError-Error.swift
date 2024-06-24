//
//  Network+Client+mapNetworkError-Error.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Network.Client {
    
    static func mapNetworkError(
        error: Error
    ) -> Network.Error {
        if let error = error as? Network.Error {
            return error
        } else if let error = error as? DecodingError {
            return Network.Error.decoding(error)
        } else {
            return Network.Error.unexpected(error)
        }
    }
}
