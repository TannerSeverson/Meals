//
//  Meals+Preview+Mock.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Meals.Preview {
    
    public enum Mock: String, CaseIterable, Mockable {
        case bananaPancakes
        case teriyakiChickenCasserole
    }
}

extension Meals.Preview.Mock {
    
    public var model: String {
        "Meals.Preview"
    }
}
