//
//  MealScreen+Ingredients.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import SwiftUI

extension MealScreenView {
    
    struct Ingredients: View {
        
        var ingredients: [String]
        
        var body: some View {
            Section {
                Label {
                    Text(
                        "Ingredients",
                        bundle: .module
                    )
                    .font(.largeTitle)
                    .fontWeight(.bold)
                } icon: {
                    Image(
                        "memo",
                        bundle: .module
                    )
                    .resizable()
                    .scaledToFit()
                }
                
                ForEach(
                    ingredients,
                    id: \.self
                ) { ingredient in
                    Label {
                        Text(
                            ingredient
                                .capitalized
                        )
                    } icon: {
                        Image(
                            "dot",
                            bundle: .module
                        )
                    }
                }
            }
        }
    }
}

#Preview {
    List {
        MealScreenView.Ingredients(
            ingredients: Meal
                .preview(for: .bananaPancakes)
                .ingredients
        )
    }
}
