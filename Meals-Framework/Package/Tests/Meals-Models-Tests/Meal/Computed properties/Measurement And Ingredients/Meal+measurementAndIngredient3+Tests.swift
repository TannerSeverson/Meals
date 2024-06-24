//
//  Meal+measurementAndIngredient3+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_measurementAndIngredient3_Tests: XCTestCase {
    
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
            sut.measurementAndIngredient3,
            [
                nil,
                nil
            ]
        )
    }
    
    func test_strIngredient() {
        sut = .inject(strIngredient3: "Ingredient")
        XCTAssertEqual(
            sut.measurementAndIngredient3,
            [
                nil,
                "Ingredient"
            ]
        )
    }
    
    func test_strMeasure() {
        sut = .inject(strMeasure3: "Measurement")
        XCTAssertEqual(
            sut.measurementAndIngredient3,
            [
                "Measurement",
                nil
            ]
        )
    }
    
    func test_strIngredient_and_strMeasure() {
        sut = .inject(
            strIngredient3: "Ingredient",
            strMeasure3: "Measurement"
        )
        XCTAssertEqual(
            sut.measurementAndIngredient3,
            [
                "Measurement",
                "Ingredient"
            ]
        )
    }
}
