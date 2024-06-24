//
//  Meals+Client.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models
import Networking

extension Meals {
    
    public struct Client: Network.Client {
        
        public static var session: URLSession = .shared
        
        public static var liveValue: Self = {
            .init(meals: fetch)
        }()
        
        public var meals: (Meal.Category) async throws -> Meals
        
        static func fetch(category: Meal.Category) async throws -> Meals {
            try await send(
                request: Request(category: category)
            )
        }
    }
}

extension Meals.Client {
    
    public static func inject(
        meals: @escaping (Meal.Category) async throws -> Meals
    ) -> Self {
        .init(meals: meals)
    }
}

extension Meals.Client {
    
    public static func inject(
        error: Network.Error
    ) -> Self {
        .inject { _ in throw error }
    }
}
