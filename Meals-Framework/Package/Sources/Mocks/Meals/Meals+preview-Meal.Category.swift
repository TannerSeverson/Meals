//
//  Meals+preview-Meal.Category.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Meals {
    
    @discardableResult
    public static func preview(
        for mock: Meal.Category
    ) -> Meals {
        try! Meals.decode(data: mock.data)
    }
}
