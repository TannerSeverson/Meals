//
//  Meal+FromID+Properties+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_FromID_Properties_Tests: XCTestCase {
    
    var sut: Meal.FromID!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = .inject()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_meals() {
        XCTAssert((sut.meals as Any) is [Meals])
    }
}
