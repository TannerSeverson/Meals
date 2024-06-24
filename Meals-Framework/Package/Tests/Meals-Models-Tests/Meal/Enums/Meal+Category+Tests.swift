//
//  Meal+Category+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_Category_Tests: XCTestCase {
    
    func test_allCases() {
        XCTAssertEqual(
            Meal.Category.allCases.count,
            6
        )
    }
    
    func test_beef() {
        XCTAssertEqual(
            Meal.Category.beef.rawValue,
            "beef"
        )
    }
    
    func test_chicken() {
        XCTAssertEqual(
            Meal.Category.chicken.rawValue,
            "chicken"
        )
    }
    
    func test_dessert() {
        XCTAssertEqual(
            Meal.Category.dessert.rawValue,
            "dessert"
        )
    }
    
    func test_pork() {
        XCTAssertEqual(
            Meal.Category.pork.rawValue,
            "pork"
        )
    }
    
    func test_seafood() {
        XCTAssertEqual(
            Meal.Category.seafood.rawValue,
            "seafood"
        )
    }
    
    func test_vegetarian() {
        XCTAssertEqual(
            Meal.Category.vegetarian.rawValue,
            "vegetarian"
        )
    }
}
