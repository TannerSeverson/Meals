//
//  ContentView.swift
//  Meals
//
//  Created by Tanner Severson on 6/23/24.
//

import SwiftUI
import Meals_Client
import Meals_Models
import Meals_Screen
import Navigation
import Navigation_View

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @State var mealProvider = Meal.Provider()
    @State var mealsProvider = Meals.Provider()
    @State var presentation = Navigation.Presentation()
    
    var body: some View {
        Group {
            if horizontalSizeClass == .compact {
                NavigationStack {
                    MealsScreen { meal in
                        presentation.item = .meal(preview: meal)
                    }
                }
                .sheet(item: $presentation.item) { item in
                    Navigation.View(item: item)
                }
            } else {
                NavigationSplitView(columnVisibility: .constant(.all)) {
                    MealsScreen { meal in
                        presentation.item = .meal(preview: meal)
                    }
                } detail: {
                    if let item = presentation.item {
                        Navigation.View(item: item)
                    } else {
                        ContentUnavailableView(
                            "Select Meal",
                            systemImage: "birthday.cake"
                        )
                    }
                }
                .navigationSplitViewStyle(.balanced)
            }
        }
        .environment(mealProvider)
        .environment(mealsProvider)
        .environment(presentation)
    }
}

#Preview {
    ContentView()
}
