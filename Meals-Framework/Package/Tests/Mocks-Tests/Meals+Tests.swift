//
//  Meals+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Mocks

final class Meals_Mock_Tests: XCTestCase {
    
    func test_preview() {
        for `case` in Meal.Category.allCases {
            XCTAssertNoThrow(Meals.preview(for: `case`))
        }
    }
}
