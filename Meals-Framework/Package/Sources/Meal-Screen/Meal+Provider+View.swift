//
//  Meal+Provider+View.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Client
import Meals_Models
import SwiftUI

extension Meal.Provider {
    
    struct View: SwiftUI.View {
        
        var state: Network.State<Meal>
        
        var body: some SwiftUI.View {
            switch state {
                case .idle, .loading:
                    ProgressView()
                    
                case let .success(meal):
                    List {
                        MealScreenView(meal: meal)
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

#Preview("Idle") {
    Meal.Provider.View(state: .idle)
}

#Preview("Loading") {
    Meal.Provider.View(state: .loading)
}

#Preview("Banana Pancakes") {
    Meal.Provider.View(state: .success(.preview(for: .bananaPancakes)))
}

#Preview("Failure") {
    Meal.Provider.View(state: .failure(.missingURL))
}
