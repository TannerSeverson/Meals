//
//  Meal+FromID.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Meal {
    
    public struct FromID: Decodable, Equatable {
        
        public let meals: [Meal]
    }
}
