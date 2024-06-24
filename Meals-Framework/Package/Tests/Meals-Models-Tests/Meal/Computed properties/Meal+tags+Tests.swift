//
//  Meal+tags+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_tags_Tests: XCTestCase {
    
    var sut: Meal!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_none() {
        sut = .inject(strTags: nil)
        XCTAssertEqual(
            sut.tags,
            []
        )
    }
    
    func test_value() {
        sut = .inject(strTags: "Tag")
        XCTAssertEqual(
            sut.tags,
            [
                "Tag"
            ]
        )
    }
    
    func test_separatedBy() {
        sut = .inject(strTags: "One, Two, Three")
        XCTAssertEqual(
            sut.tags,
            [
                "One",
                "Two",
                "Three"
            ]
        )
    }
    
    func test_trimmingCharacters() {
        sut = .inject(strTags: "\n One ")
        XCTAssertEqual(
            sut.tags,
            [
                "One",
            ]
        )
    }
}
