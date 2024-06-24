//
//  Meals+inject.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

@testable import Meals_Models

extension Meals {
    
    static func inject(
        meals: [Meals.Preview] = []
    ) -> Meals {
        .init(meals: meals)
    }
}
