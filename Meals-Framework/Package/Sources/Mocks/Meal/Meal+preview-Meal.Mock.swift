//
//  Meal+preview-Meal.Mock.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Meal {
    
    @discardableResult
    public static func preview(
        for mock: Meal.Mock
    ) -> Meal {
        try! .decode(data: mock.data)
    }
}
