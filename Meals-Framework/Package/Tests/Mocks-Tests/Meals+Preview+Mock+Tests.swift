//
//  Meals+Preview+Mock+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Mocks

final class Meals_Preview_Mock_Tests: XCTestCase {
    
    func test_preview() {
        for `case` in Meals.Preview.Mock.allCases {
            XCTAssertNoThrow(Meals.Preview.preview(for: `case`))
        }
    }
}
