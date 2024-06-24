//
//  MealScreenView.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import SwiftUI

struct MealScreenView: View {
    
    var meal: Meal
    
    var body: some View {
        Photo(url: meal.imageURL)
        Tags(tags: meal.tags)
        Instructions(instructions: meal.formattedInstructions)
        Ingredients(ingredients: meal.ingredients)
    }
}

import Mocks

#Preview("Banana Pancakes") {
    List {
        MealScreenView(
            meal: Meal.preview(for: .bananaPancakes)
        )
    }
}
