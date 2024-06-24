//
//  MealsPreviewRow.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import SwiftUI

struct MealsPreviewRow: View {
    
    var meal: Meals.Preview
    
    var body: some View {
        LabeledContent {
            Text(meal.name)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
        } label: {
            AsyncImage(
                url: meal.imageURL
            ) { image in
                image
                    .resizable()
                    .frame(
                        width: 80,
                        height: 80
                    )
                    .cornerRadius(8)
                    .scaledToFill()
            } placeholder: {
                ProgressView()
                    .frame(
                        width: 80,
                        height: 80
                    )
            }
        }
    }
}

import Mocks

#Preview {
    List {
        MealsPreviewRow(
            meal: Meals.Preview.preview(for: .bananaPancakes)
        )
    }
}
