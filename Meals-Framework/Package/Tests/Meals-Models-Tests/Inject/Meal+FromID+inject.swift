//
//  Meal+FromID+inject.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

@testable import Meals_Models

extension Meal.FromID {
    
    static func inject(
        meals: [Meal] = []
    ) -> Meal.FromID {
        .init(meals: meals)
    }
}
