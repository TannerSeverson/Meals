//
//  Decodable+decode-Data.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Decodable {
    
    @discardableResult
    public static func decode<T: Decodable>(
        data: Data
    ) throws -> T {
        try JSONDecoder().decode(T.self, from: data)
    }
}
