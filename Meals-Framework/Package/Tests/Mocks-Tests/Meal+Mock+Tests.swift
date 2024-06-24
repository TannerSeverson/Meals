//
//  Meal+Mock+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Mocks

final class Meal_Mock_Tests: XCTestCase {
    
    func test_preview() {
        for `case` in Meal.Mock.allCases {
            XCTAssertNoThrow(Meal.preview(for: `case`))
        }
    }
}
