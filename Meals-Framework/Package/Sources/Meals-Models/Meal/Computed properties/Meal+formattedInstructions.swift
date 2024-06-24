//
//  Meal+formattedInstructions.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Meal {
    
    public var formattedInstructions: String? {
        strInstructions?
            .replacingOccurrences(of: "\r", with: "\n")
            .split(separator: "\n")
            .map { String($0).trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { $0 != "\n" }
            .joined(separator: "\n\n")
    }
}
