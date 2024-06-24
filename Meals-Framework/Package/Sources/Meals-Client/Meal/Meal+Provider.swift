//
//  Meal+Provider.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Meals_Models
import Networking
import SwiftUI

extension Meal {
    
    @Observable
    public class Provider: NetworkObject {
        
        private(set)
        public var state: Network.State<Meal> = .idle
        let client: Meal.Client
        
        public init(
            client: Meal.Client = .liveValue
        ) {
            self.client = client
        }
        
        public func fetch(id: String) async {
            state = .loading
            do {
                guard let meal = try await client.meal(id) else {
                    state = .failure(Network.Error.unknown("Missing `Meal`"))
                    return
                }
                state = .success(meal)
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
