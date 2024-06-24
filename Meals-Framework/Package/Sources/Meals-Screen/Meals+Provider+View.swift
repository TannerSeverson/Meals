//
//  Meals+Provider+View.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Client
import Meals_List
import Meals_Models
import SwiftUI

extension Meals.Provider {
    
    struct View: SwiftUI.View {
        
        var state: Network.State<[Meals.Preview]>
        var action: (Meals.Preview) -> Void
        
        var body: some SwiftUI.View {
            switch state {
                case .idle, .loading:
                    ProgressView()
                    
                case let .success(meals):
                    MealsList(
                        meals: meals
                    ) { meal in
                        Button {
                            action(meal)
                        } label: {
                            MealsPreviewRow(meal: meal)
                        }
                    }
                    
                case let .failure(error):
                    ContentUnavailableView(
                        error.localizedDescription,
                        systemImage: "exclamationmark.triangle.fill"
                    )
            }
        }
    }
}

import Networking
import Mocks

#Preview("Banana Pancakes") {
    Meals.Provider.View(
        state: .success(Meals.preview(for: .dessert).meals)
    ) { _ in }
}

#Preview("Idle") {
    Meals.Provider.View(state: .idle) { _ in }
}

#Preview("Loading") {
    Meals.Provider.View(state: .loading) { _ in }
}

#Preview("Failure") {
    Meals.Provider.View(state: .failure(.missingURL)) { _ in }
}
