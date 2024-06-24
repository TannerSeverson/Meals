//
//  Meal.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

public struct Meal: Decodable, Identifiable, Hashable {
    
    public typealias Ingredient = String
    public typealias Measurement = String
    
    public var id: String? {
        idMeal
    }
    
    let idMeal: String?
    let strMeal: String?
    let strCategory: String?
    let strArea: String?
    let strInstructions: String?
    let strTags: String?
    let strIngredient1: Ingredient?
    let strIngredient2: Ingredient?
    let strIngredient3: Ingredient?
    let strIngredient4: Ingredient?
    let strIngredient5: Ingredient?
    let strIngredient6: Ingredient?
    let strIngredient7: Ingredient?
    let strIngredient8: Ingredient?
    let strIngredient9: Ingredient?
    let strIngredient10: Ingredient?
    let strIngredient11: Ingredient?
    let strIngredient12: Ingredient?
    let strIngredient13: Ingredient?
    let strIngredient14: Ingredient?
    let strIngredient15: Ingredient?
    let strIngredient16: Ingredient?
    let strIngredient17: Ingredient?
    let strIngredient18: Ingredient?
    let strIngredient19: Ingredient?
    let strIngredient20: Ingredient?
    let strMeasure1: Measurement?
    let strMeasure2: Measurement?
    let strMeasure3: Measurement?
    let strMeasure4: Measurement?
    let strMeasure5: Measurement?
    let strMeasure6: Measurement?
    let strMeasure7: Measurement?
    let strMeasure8: Measurement?
    let strMeasure9: Measurement?
    let strMeasure10: Measurement?
    let strMeasure11: Measurement?
    let strMeasure12: Measurement?
    let strMeasure13: Measurement?
    let strMeasure14: Measurement?
    let strMeasure15: Measurement?
    let strMeasure16: Measurement?
    let strMeasure17: Measurement?
    let strMeasure18: Measurement?
    let strMeasure19: Measurement?
    let strMeasure20: Measurement?
    let strMealThumb: String?
    let dateModified: String?
}
