//
//  MealScreen+Photo.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import SwiftUI

extension MealScreenView {
    
    struct Photo: View {
        
        var url: URL?
        
        var body: some View {
            Section {
                AsyncImage(
                    url: url
                ) { image in
                    image
                        .resizable()
                        .aspectRatio(1, contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                )
                .listRowInsets(
                    .init(
                        top: 0,
                        leading: 0,
                        bottom: 0,
                        trailing: 0
                    )
                )
            }
        }
    }
}

#Preview("Photo") {
    List {
        MealScreenView.Photo(
            url: Meal
                .preview(for: .bananaPancakes)
                .imageURL
        )
    }
}

#Preview("Loading") {
    List {
        MealScreenView.Photo(
            url: nil
        )
    }
}
