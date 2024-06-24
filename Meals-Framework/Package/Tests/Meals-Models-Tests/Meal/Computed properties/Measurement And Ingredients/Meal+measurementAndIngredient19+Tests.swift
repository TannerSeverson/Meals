//
//  Meal+measurementAndIngredient19+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_measurementAndIngredient19_Tests: XCTestCase {
    
    var sut: Meal!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = .inject()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_none() {
        XCTAssertEqual(
            sut.measurementAndIngredient19,
            [
                nil,
                nil
            ]
        )
    }
    
    func test_strIngredient() {
        sut = .inject(strIngredient19: "Ingredient")
        XCTAssertEqual(
            sut.measurementAndIngredient19,
            [
                nil,
                "Ingredient"
            ]
        )
    }
    
    func test_strMeasure() {
        sut = .inject(strMeasure19: "Measurement")
        XCTAssertEqual(
            sut.measurementAndIngredient19,
            [
                "Measurement",
                nil
            ]
        )
    }
    
    func test_strIngredient_and_strMeasure() {
        sut = .inject(
            strIngredient19: "Ingredient",
            strMeasure19: "Measurement"
        )
        XCTAssertEqual(
            sut.measurementAndIngredient19,
            [
                "Measurement",
                "Ingredient"
            ]
        )
    }
}
