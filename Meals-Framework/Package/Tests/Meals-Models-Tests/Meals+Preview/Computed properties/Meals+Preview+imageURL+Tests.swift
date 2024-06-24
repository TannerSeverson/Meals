//
//  Meals+Preview+imageURL+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meals_Preview_imageURL_Tests: XCTestCase {
    
    var sut: Meals.Preview!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
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
