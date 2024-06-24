//
//  Meal+preview-String.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Meal {
    
    @discardableResult
    public static func preview(
        for mock: String
    ) -> Meal {
        switch mock {
            case "52855":
                Meal.preview(for: .bananaPancakes)
            default:
                fatalError()
        }
    }
}
