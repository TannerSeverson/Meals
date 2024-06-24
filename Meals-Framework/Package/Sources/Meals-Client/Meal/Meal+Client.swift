//
//  Meal+Client.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models
import Networking

extension Meal {
    
    public struct Client: Network.Client {
        
        public static var session: URLSession = .shared
        
        public static var liveValue: Self {
            .init(meal: fetch(id:))
        }
        
        public var meal: (String) async throws -> Meal?
        
        static func fetch(id: String) async throws -> Meal? {
            try await fetch(from: id).meals.first
        }
        
        static func fetch(from id: String) async throws -> Meal.FromID {
            try await send(
                request: Request(id: id)
            )
        }
    }
}

extension Meal.Client {
    
    public static func inject(
        meal: @escaping (String) async throws -> Meal?
    ) -> Self {
        .init(meal: meal)
    }
}

extension Meal.Client {
    
    public static func inject(
        error: Network.Error
    ) -> Self {
        .inject { _ in throw error }
    }
}
