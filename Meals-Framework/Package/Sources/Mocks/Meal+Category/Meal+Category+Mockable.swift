//
//  Meal+Category+Mockable.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Meal.Category: Mockable {
    
    public var model: String {
        "Meals"
    }
}
