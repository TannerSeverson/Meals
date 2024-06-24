//
//  Meal+ingredients+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_ingredients_Tests: XCTestCase {
    
    var sut: Meal!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_none() {
        sut = .inject()
        XCTAssertEqual(
            sut.ingredients,
            []
        )
    }
    
    func test_1() {
        sut = .inject(
            strIngredient1: "Ingredient",
            strMeasure1: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_2() {
        sut = .inject(
            strIngredient2: "Ingredient",
            strMeasure2: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_3() {
        sut = .inject(
            strIngredient3: "Ingredient",
            strMeasure3: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_4() {
        sut = .inject(
            strIngredient4: "Ingredient",
            strMeasure4: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_5() {
        sut = .inject(
            strIngredient5: "Ingredient",
            strMeasure5: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_6() {
        sut = .inject(
            strIngredient6: "Ingredient",
            strMeasure6: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_7() {
        sut = .inject(
            strIngredient7: "Ingredient",
            strMeasure7: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_8() {
        sut = .inject(
            strIngredient8: "Ingredient",
            strMeasure8: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_9() {
        sut = .inject(
            strIngredient9: "Ingredient",
            strMeasure9: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_10() {
        sut = .inject(
            strIngredient10: "Ingredient",
            strMeasure10: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_11() {
        sut = .inject(
            strIngredient11: "Ingredient",
            strMeasure11: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_12() {
        sut = .inject(
            strIngredient12: "Ingredient",
            strMeasure12: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_13() {
        sut = .inject(
            strIngredient13: "Ingredient",
            strMeasure13: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_14() {
        sut = .inject(
            strIngredient14: "Ingredient",
            strMeasure14: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_15() {
        sut = .inject(
            strIngredient15: "Ingredient",
            strMeasure15: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_16() {
        sut = .inject(
            strIngredient16: "Ingredient",
            strMeasure16: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_17() {
        sut = .inject(
            strIngredient17: "Ingredient",
            strMeasure17: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_18() {
        sut = .inject(
            strIngredient18: "Ingredient",
            strMeasure18: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_19() {
        sut = .inject(
            strIngredient19: "Ingredient",
            strMeasure19: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_20() {
        sut = .inject(
            strIngredient20: "Ingredient",
            strMeasure20: "Measurement"
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_trimmingCharacters() {
        sut = .inject(
            strIngredient1: "\n Ingredient",
            strMeasure1: " Measurement "
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Measurement Ingredient"
            ]
        )
    }
    
    func test_filter() {
        sut = .inject(
            strIngredient1: "\n Ingredient",
            strMeasure1: nil
        )
        XCTAssertEqual(
            sut.ingredients,
            [
                "Ingredient"
            ]
        )
    }
}
