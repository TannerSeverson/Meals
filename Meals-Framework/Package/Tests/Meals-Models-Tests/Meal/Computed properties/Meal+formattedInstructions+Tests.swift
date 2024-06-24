//
//  Meal+formattedInstructions+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_formattedInstructions_Tests: XCTestCase {
    
    var sut: Meal!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_basic() {
        sut = .inject(strInstructions: "I am Instructions")
        XCTAssertEqual(
            sut.formattedInstructions,
            "I am Instructions"
        )
    }
    
    func test_replacingOccurrences() {
        sut = .inject(strInstructions: "I am \rInstructions")
        XCTAssertEqual(
            sut.formattedInstructions,
            "I am\n\nInstructions"
        )
    }
    
    func test_trimmingCharacters() {
        sut = .inject(strInstructions: " I am Instructions ")
        XCTAssertEqual(
            sut.formattedInstructions,
            "I am Instructions"
        )
    }
    
    func test_joined() {
        sut = .inject(strInstructions: "I am \nInstructions")
        XCTAssertEqual(
            sut.formattedInstructions,
            "I am\n\nInstructions"
        )
    }
}
