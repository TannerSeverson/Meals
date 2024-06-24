//
//  MealsScreen.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Client
import Meals_Models
import Networking
import SwiftUI

public struct MealsScreen: View {
    
    public init(
        category: Meal.Category = .dessert,
        action: @escaping (Meals.Preview) -> Void
    ) {
        self.category = category
        self.action = action
    }
    
    @Environment(Meals.Provider.self) private var provider
    
    @State var category: Meal.Category = .dessert
    var action: (Meals.Preview) -> Void
    
    public var body: some View {
        Meals.Provider.View(
            state: provider.state,
            action: action
        )
        
        // MARK: Life Cycle
        
        .task { await fetch() }
        .refreshable { await fetch() }
        
        // MARK: Navigation
        
        .navigationTitle(category.rawValue.capitalized)
        .navigationBarTitleDisplayMode(.large)
        .toolbar(content: toolbarContent)
    }
}

extension MealsScreen {
    
    func fetch() async {
        await provider.fetch(category: category)
    }
}


import Mocks
import Navigation

#Preview("Preview") {
    NavigationStack {
        MealsScreen() { _ in }
    }
    .environment(Meals.Provider(client: .inject(meals: Meals.preview(for:))))
    .environment(Navigation.Presentation())
}

#Preview("Error") {
    NavigationStack {
        MealsScreen() { _ in }
    }
    .environment(Meals.Provider(client: .inject(error: .noHTTPURLResponse)))
    .environment(Navigation.Presentation())
}

//#Preview("Live") {
//    NavigationStack {
//        MealsScreen()
//    }
//    .environment(Meals.Provider(client: .liveValue))
//    .environment(Navigation.Presentation())
//}

