//
//  Navigation+View.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Meal_Screen
import Navigation
import SwiftUI

extension Navigation {
    
    public struct View: SwiftUI.View {
        
        public init(
            item: Navigation.Item? = nil
        ) {
            self.item = item
        }
        
        public var item: Navigation.Item?
        
        public var body: some SwiftUI.View {
            switch item {
                case let .meal(preview):
                    NavigationStack {
                        MealScreen(preview: preview)
                    }
                case .none:
                    EmptyView()
            }
        }
    }
}
