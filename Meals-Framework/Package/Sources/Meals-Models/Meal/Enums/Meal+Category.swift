//
//  Meal+Category.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Meal {
    
    public enum Category: String, Identifiable, CaseIterable {
        
        public var id: Self { self }
        
        case beef
        case chicken
        case dessert
        case pork
        case seafood
        case vegetarian
    }
}
