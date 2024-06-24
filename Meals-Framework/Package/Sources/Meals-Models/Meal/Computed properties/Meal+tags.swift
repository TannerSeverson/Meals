//
//  Meal+tags.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Meal {
    
    public var tags: [String] {
        strTags?
            .components(separatedBy: ",")
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
        ?? []
    }
}
