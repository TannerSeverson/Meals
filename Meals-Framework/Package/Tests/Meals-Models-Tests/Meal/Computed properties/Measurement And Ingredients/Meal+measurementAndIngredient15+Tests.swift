//
//  Meal+measurementAndIngredient15+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_measurementAndIngredient15_Tests: XCTestCase {
    
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
            sut.measurementAndIngredient15,
            [
                nil,
                nil
            ]
        )
    }
    
    func test_strIngredient() {
        sut = .inject(strIngredient15: "Ingredient")
        XCTAssertEqual(
            sut.measurementAndIngredient15,
            [
                nil,
                "Ingredient"
            ]
        )
    }
    
    func test_strMeasure() {
        sut = .inject(strMeasure15: "Measurement")
        XCTAssertEqual(
            sut.measurementAndIngredient15,
            [
                "Measurement",
                nil
            ]
        )
    }
    
    func test_strIngredient_and_strMeasure() {
        sut = .inject(
            strIngredient15: "Ingredient",
            strMeasure15: "Measurement"
        )
        XCTAssertEqual(
            sut.measurementAndIngredient15,
            [
                "Measurement",
                "Ingredient"
            ]
        )
    }
}
