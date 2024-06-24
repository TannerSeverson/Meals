//
//  Meals_UITests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest

final class Meals_UITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        app = nil
    }
    
    func test_Menu() throws {
        app.launch()
        app.navigationBars.otherElements["Menu"].tap()
        XCTAssert(app.collectionViews.buttons["Beef"].exists)
        XCTAssert(app.collectionViews.buttons["Chicken"].exists)
        XCTAssert(app.collectionViews.buttons["Dessert"].exists)
        XCTAssert(app.collectionViews.buttons["Pork"].exists)
        XCTAssert(app.collectionViews.buttons["Seafood"].exists)
        XCTAssert(app.collectionViews.buttons["Vegetarian"].exists)
    }
    
    func test_switchToChicken() throws {
        app.launch()
        app.navigationBars.otherElements["Menu"].tap()
        app.collectionViews.buttons["Chicken"].tap()
        XCTAssert(app.collectionViews.staticTexts["Chick-Fil-A Sandwich"].waitForExistence(timeout: 2))
    }
    
    func test_ApamBalik() throws {
        app.launch()
        app.collectionViews.staticTexts["Apam balik"].tap()
        app.collectionViews.staticTexts["Instructions"].swipeUp()
        XCTAssert(app.collectionViews.staticTexts["Instructions"].exists)
        XCTAssert(app.collectionViews.staticTexts["200Ml Milk"].exists)
        XCTAssert(app.collectionViews.staticTexts["60Ml Oil"].exists)
        XCTAssert(app.collectionViews.staticTexts["2 Eggs"].exists)
        app.collectionViews.staticTexts["2 Eggs"].swipeUp()
        XCTAssert(app.collectionViews.staticTexts["1600G Flour"].exists)
        XCTAssert(app.collectionViews.staticTexts["3 Tsp Baking Powder"].exists)
        XCTAssert(app.collectionViews.staticTexts["1/2 Tsp Salt"].exists)
        XCTAssert(app.collectionViews.staticTexts["25G Unsalted Butter"].exists)
        XCTAssert(app.collectionViews.staticTexts["45G Sugar"].exists)
        XCTAssert(app.collectionViews.staticTexts["3 Tbs Peanut Butter"].exists)
    }
}
