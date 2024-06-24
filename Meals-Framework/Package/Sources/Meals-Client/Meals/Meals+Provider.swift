//
//  Meals+Provider.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import Networking
import SwiftUI

extension Meals {
    
    @Observable
    public class Provider {
        
        private(set)
        public var state: Network.State<[Meals.Preview]> = .idle
        let client: Meals.Client
        
        public init(
            client: Meals.Client = .liveValue
        ) {
            self.client = client
        }
        
        public func fetch(category: Meal.Category) async {
            state = .loading
            do {
                let meals = try await client.meals(category).meals
                state = .success(meals)
            } catch {
                if let error = error as? Network.Error {
                    state = .failure(error)
                } else {
                    state = .failure(.unexpected(error))
                }
            }
        }
    }
}
