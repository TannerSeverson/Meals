//
//  Navigation+Item.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Navigation {
    
    public enum Item: Hashable, Identifiable {
        
        public var id: Self { self }
        
        case meal(preview: Meals.Preview)
    }
}
