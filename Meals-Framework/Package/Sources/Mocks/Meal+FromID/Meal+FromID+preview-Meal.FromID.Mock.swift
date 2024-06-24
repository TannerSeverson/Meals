//
//  Meal+FromID+preview-Meal.FromID.Mock.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Meal.FromID {
    
    @discardableResult
    public static func preview(
        for mock: Meal.FromID.Mock
    ) throws -> Meal.FromID {
        try! Meal.FromID.decode(data: mock.data)
    }
}
