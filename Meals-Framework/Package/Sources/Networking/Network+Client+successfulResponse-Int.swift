//
//  Network+Client+successfulResponse-Int.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Network.Client {
    
    static func successfulResponse(
        _ statusCode: Int
    ) -> Bool {
        200...299 ~= statusCode
    }
}
