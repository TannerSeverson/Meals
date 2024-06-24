//
//  Meal+Category+uiImage.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import UIKit.UIImage

extension Meal.Category {
    
    public var uiImage: UIImage {
        switch self {
            case .beef:
                UIImage(
                    named: "cow",
                    in: .module,
                    with: nil
                )!
            case .chicken:
                UIImage(
                    named: "drumstick",
                    in: .module,
                    with: nil
                )!
            case .dessert:
                UIImage(
                    named: "cake",
                    in: .module,
                    with: nil
                )!
            case .pork:
                UIImage(
                    named: "pig",
                    in: .module,
                    with: nil
                )!
            case .seafood:
                UIImage(
                    named: "fish",
                    in: .module,
                    with: nil
                )!
            case .vegetarian:
                UIImage(
                    named: "seedling",
                    in: .module,
                    with: nil
                )!
        }
    }
}
