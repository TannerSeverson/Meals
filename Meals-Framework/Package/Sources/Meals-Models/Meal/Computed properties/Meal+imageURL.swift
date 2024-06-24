//
//  Meal+imageURL.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Meal {
    
    public var imageURL: URL? {
        guard let strMealThumb else { return nil }
        return URL(string:  strMealThumb)
    }
}
