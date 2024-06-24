//
//  Meal+Mock.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Meal {
    
    public enum Mock: String, CaseIterable, Mockable {
        case bananaPancakes
    }
}

extension Meal.Mock {
    
    public var model: String {
        "Meal"
    }
}
