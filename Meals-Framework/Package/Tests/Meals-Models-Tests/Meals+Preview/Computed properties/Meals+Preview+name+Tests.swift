//
//  Meals+Preview+name+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meals_Preview_name_Tests: XCTestCase {
    
    var sut: Meals.Preview!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_empty() {
        sut = .inject(strMeal: "")
        XCTAssertEqual(
            sut.name,
            ""
        )
    }
    
    func test_name() {
        sut = .inject(strMeal: "Pancakes")
        XCTAssertEqual(
            sut.name,
            "Pancakes"
        )
    }
}
