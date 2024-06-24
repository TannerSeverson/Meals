//
//  MealsList.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import SwiftUI

public struct MealsList<Content: View>: View {
    
    public init(
        meals: [Meals.Preview],
        @ViewBuilder content: @escaping (Meals.Preview) -> Content
    ) {
        self.meals = meals
        self.content = content
    }
    
    var meals: [Meals.Preview]
    
    @ViewBuilder
    var content: (Meals.Preview) -> Content
    
    public var body: some View {
        List(meals) { meal in
            content(meal)
        }
    }
}

import Mocks

#Preview {
    MealsList(
        meals: Meals
            .preview(for: .dessert)
            .meals
    ) { preview in
        Text(preview.name)
    }
}
