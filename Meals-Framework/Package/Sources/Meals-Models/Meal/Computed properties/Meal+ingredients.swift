//
//  Meal+ingredients.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Meal {
    
    public var ingredients: [String] {
        [
            measurementAndIngredient1,
            measurementAndIngredient2,
            measurementAndIngredient3,
            measurementAndIngredient4,
            measurementAndIngredient5,
            measurementAndIngredient6,
            measurementAndIngredient7,
            measurementAndIngredient8,
            measurementAndIngredient9,
            measurementAndIngredient10,
            measurementAndIngredient11,
            measurementAndIngredient12,
            measurementAndIngredient13,
            measurementAndIngredient14,
            measurementAndIngredient15,
            measurementAndIngredient16,
            measurementAndIngredient17,
            measurementAndIngredient18,
            measurementAndIngredient19,
            measurementAndIngredient20,
        ]
            .map {
                $0
                    .compactMap { $0 }
                    .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
                    .filter { !$0.isEmpty }
                    .joined(separator: " ")
            }
            .compactMap { $0 }
            .filter { !$0.isEmpty }
    }
}
