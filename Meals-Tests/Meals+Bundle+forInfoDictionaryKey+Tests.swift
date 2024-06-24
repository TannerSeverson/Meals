//
//  Meals+Bundle+forInfoDictionaryKey+Tests.swift
//  Meals-Tests
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals

final class Meals_Bundle_forInfoDictionaryKey_Tests: XCTestCase {
    
    // MARK: -
    
    func test_host() {
        XCTAssertEqual(
            Bundle.main.object(forInfoDictionaryKey: "Host") as? String,
            "www.themealdb.com"
        )
    }
}
