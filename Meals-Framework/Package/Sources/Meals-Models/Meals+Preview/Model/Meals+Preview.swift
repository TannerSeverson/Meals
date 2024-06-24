//
//  Meals+Preview.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Meals {
    
    public struct Preview: Decodable, Hashable, Identifiable {
        
        public var id: String {
            idMeal
        }
        
        var strMeal: String
        var strMealThumb: String
        var idMeal: String
    }
}
