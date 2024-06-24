//
//  Meal+imageURL+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_imageURL_Tests: XCTestCase {
    
    var sut: Meal!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_none() {
        sut = .inject(strMealThumb: nil)
        XCTAssertEqual(
            sut.imageURL,
            nil
        )
    }
    
    func test_empty() {
        sut = .inject(strMealThumb: "")
        XCTAssertEqual(
            sut.imageURL,
            nil
        )
    }
    
    func test_url() {
        sut = .inject(strMealThumb: "https://www.themealdb.com")
        XCTAssertEqual(
            sut.imageURL,
            URL(string: "https://www.themealdb.com")
        )
    }
}
