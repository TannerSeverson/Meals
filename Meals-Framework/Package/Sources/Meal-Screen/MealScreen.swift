//
//  MealScreen.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Client
import Meals_Models
import SwiftUI

public struct MealScreen: View {
    
    public init(
        preview: Meals.Preview
    ) {
        self.preview = preview
    }
    
    @Environment(Meal.Provider.self) var provider
    
    var preview: Meals.Preview
    
    public var body: some View {
        Meal.Provider.View(
            state: provider.state
        )
        .task { await provider.fetch(id: preview.id) }
        
        // MARK: Navigation
        
        .navigationTitle(preview.name)
        .navigationBarTitleDisplayMode(.large)
    }
}

import Mocks

#Preview("Failure - Missing Meal") {
    NavigationStack {
        MealScreen(
            preview: .preview(for: .bananaPancakes)
        )
    }
    .environment(Meal.Provider(client: .inject { _ in return nil }))
}

#Preview("Banana Pancakes") {
    NavigationStack {
        MealScreen(
            preview: .preview(for: .bananaPancakes)
        )
    }
    .environment(
        Meal.Provider(
            client: .inject(meal: Meal.preview(for:))
        )
    )
}

#Preview("Live") {
    NavigationStack {
        MealScreen(
            preview: .preview(for: .bananaPancakes)
        )
    }
    .environment(Meal.Provider(client: .liveValue))
}
