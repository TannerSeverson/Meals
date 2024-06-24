//
//  Meal+Category+image+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_Category_image_Tests: XCTestCase {
    
    func test_beef() {
        XCTAssertNoThrow(Meal.Category.beef.image)
    }
    
    func test_chicken() {
        XCTAssertNoThrow(Meal.Category.chicken.image)
    }
    
    func test_dessert() {
        XCTAssertNoThrow(Meal.Category.dessert.image)
    }
    
    func test_pork() {
        XCTAssertNoThrow(Meal.Category.pork.image)
    }
    
    func test_seafood() {
        XCTAssertNoThrow(Meal.Category.seafood.image)
    }
    
    func test_vegetarian() {
        XCTAssertNoThrow(Meal.Category.vegetarian.image)
    }
}
