//
//  Meals+Preview+inject.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

@testable import Meals_Models

extension Meals.Preview {
    
    static func inject(
        strMeal: String = "",
        strMealThumb: String = "",
        idMeal: String = ""
    ) -> Meals.Preview {
        .init(
            strMeal: strMeal,
            strMealThumb: strMealThumb,
            idMeal: idMeal
        )
    }
}
