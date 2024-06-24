//
//  Meal+measurementAndIngredient17+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_measurementAndIngredient17_Tests: XCTestCase {
    
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
            sut.measurementAndIngredient17,
            [
                nil,
                nil
            ]
        )
    }
    
    func test_strIngredient() {
        sut = .inject(strIngredient17: "Ingredient")
        XCTAssertEqual(
            sut.measurementAndIngredient17,
            [
                nil,
                "Ingredient"
            ]
        )
    }
    
    func test_strMeasure() {
        sut = .inject(strMeasure17: "Measurement")
        XCTAssertEqual(
            sut.measurementAndIngredient17,
            [
                "Measurement",
                nil
            ]
        )
    }
    
    func test_strIngredient_and_strMeasure() {
        sut = .inject(
            strIngredient17: "Ingredient",
            strMeasure17: "Measurement"
        )
        XCTAssertEqual(
            sut.measurementAndIngredient17,
            [
                "Measurement",
                "Ingredient"
            ]
        )
    }
}
