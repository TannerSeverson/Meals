//
//  MealsScreen+Toolbar.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import SwiftUI

extension MealsScreen {
    
    @ToolbarContentBuilder
    func toolbarContent() -> some ToolbarContent {
        ToolbarItemGroup(
            placement: .navigationBarTrailing
        ) {
            Menu {
                ForEach(
                    Meal.Category
                        .allCases
                ) { category in
                    Button {
                        self.category = category
                    } label: {
                        Label {
                            Text(
                                category
                                    .rawValue
                                    .capitalized
                            )
                        } icon: {
                            category.image
                        }
                    }
                }
            } label: {
                category
                    .image
                    .accessibilityIdentifier("Menu")
            }
            .onChange(of: category) {
                Task { @MainActor in
                    await fetch()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        Color
            .clear
            .toolbar(content: MealsScreen { _ in }.toolbarContent)
    }
}
