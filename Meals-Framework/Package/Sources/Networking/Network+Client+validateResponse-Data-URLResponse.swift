//
//  Network+Client+validateResponse-Data-URLResponse.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Network.Client {
    
    static func validateResponse(
        data: Data,
        urlResponse: URLResponse
    ) throws -> Data {
        guard let httpURLResponse = urlResponse as? HTTPURLResponse else {
            throw Network.Error.noHTTPURLResponse
        }
        guard successfulResponse(httpURLResponse.statusCode) else {
            throw Network.Error.status(httpURLResponse.statusCode)
        }
        return data
    }
}
