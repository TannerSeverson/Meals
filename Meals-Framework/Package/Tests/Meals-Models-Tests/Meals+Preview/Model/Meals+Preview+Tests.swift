//
//  Meals+Preview+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meals_Preview_Properties_Tests: XCTestCase {
    
    var sut: Meals.Preview!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = .inject()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_strMeal() {
        XCTAssert((sut.strMeal as Any) is String)
    }
    
    func test_strMealThumb() {
        XCTAssert((sut.strMealThumb as Any) is String?)
    }
    
    func test_idMeal() {
        XCTAssert((sut.idMeal as Any) is String?)
    }
}
