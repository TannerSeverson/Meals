//
//  Meal+Category+uiImage+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_Category_uiImage_Tests: XCTestCase {
    
    func test_beef() {
        XCTAssertNoThrow(Meal.Category.beef.uiImage)
    }
    
    func test_chicken() {
        XCTAssertNoThrow(Meal.Category.chicken.uiImage)
    }
    
    func test_dessert() {
        XCTAssertNoThrow(Meal.Category.dessert.uiImage)
    }
    
    func test_pork() {
        XCTAssertNoThrow(Meal.Category.pork.uiImage)
    }
    
    func test_seafood() {
        XCTAssertNoThrow(Meal.Category.seafood.uiImage)
    }
    
    func test_vegetarian() {
        XCTAssertNoThrow(Meal.Category.vegetarian.uiImage)
    }
}
