//
//  MealScreen+Tags.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import SwiftUI

extension MealScreenView {
    
    struct Tags: View {
        
        var tags: [String]
        
        var body: some View {
            if !tags.isEmpty {
                Section {
                    ForEach(
                        tags
                            .sorted()
                            .prefix(3),
                        id: \.self
                    ) { tag in
                        Label {
                            Text(tag)
                        } icon: {
                            Image(
                                "tag",
                                bundle: .module
                            )
                            .resizable()
                            .scaledToFit()
                        }
                    }
                    .listRowBackground(Color.clear)
                }
            }
        }
    }
}

#Preview {
    List {
        MealScreenView.Tags(
            tags: Meal
                .preview(for: .bananaPancakes)
                .tags
        )
    }
}
