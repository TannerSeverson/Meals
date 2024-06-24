//
//  MealScreen+Instructions.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import SwiftUI

extension MealScreenView {
    
    struct Instructions: View {
        
        var instructions: String?
        
        var body: some View {
            Section {
                Label {
                    Text("Instructions")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                } icon: {
                    Image(
                        "chef",
                        bundle: .module
                    )
                    .resizable()
                    .scaledToFit()
                }
                Text(
                    instructions
                    ?? ""
                )
            }
        }
    }
}

#Preview {
    List {
        MealScreenView.Instructions(
            instructions: Meal
                .preview(for: .bananaPancakes)
                .formattedInstructions
        )
    }
}
