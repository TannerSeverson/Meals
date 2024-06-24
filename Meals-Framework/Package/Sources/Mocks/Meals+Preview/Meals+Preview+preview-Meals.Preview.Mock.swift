//
//  Meals+Preview+preview-Meals.Preview.Mock.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models

extension Meals.Preview {
    
    @discardableResult
    public static func preview(
        for mock: Meals.Preview.Mock
    ) -> Meals.Preview {
        try! Meals.Preview.decode(data: mock.data)
    }
}
