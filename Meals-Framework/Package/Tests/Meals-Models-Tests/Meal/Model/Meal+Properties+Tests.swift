//
//  Meal+Properties+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Models

final class Meal_Properties_Tests: XCTestCase {
    
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
    
    func test_idMeal() {
        XCTAssert((sut.idMeal as Any) is String?)
    }
    
    func test_strMeal() {
        XCTAssert((sut.strMeal as Any) is String?)
    }
    
    func test_strCategory() {
        XCTAssert((sut.strCategory as Any) is String?)
    }
    
    func test_strArea() {
        XCTAssert((sut.strArea as Any) is String?)
    }
    
    func test_strInstructions() {
        XCTAssert((sut.strInstructions as Any) is String?)
    }
    
    func test_strTags() {
        XCTAssert((sut.strTags as Any) is String?)
    }
    
    func test_strIngredient1() {
        XCTAssert((sut.strIngredient1 as Any) is String?)
    }
    
    func test_strIngredient2() {
        XCTAssert((sut.strIngredient2 as Any) is String?)
    }
    
    func test_strIngredient3() {
        XCTAssert((sut.strIngredient3 as Any) is String?)
    }
    
    func test_strIngredient4() {
        XCTAssert((sut.strIngredient4 as Any) is String?)
    }
    
    func test_strIngredient5() {
        XCTAssert((sut.strIngredient5 as Any) is String?)
    }
    
    func test_strIngredient6() {
        XCTAssert((sut.strIngredient6 as Any) is String?)
    }
    
    func test_strIngredient7() {
        XCTAssert((sut.strIngredient7 as Any) is String?)
    }
    
    func test_strIngredient8() {
        XCTAssert((sut.strIngredient8 as Any) is String?)
    }
    
    func test_strIngredient9() {
        XCTAssert((sut.strIngredient9 as Any) is String?)
    }
    
    func test_strIngredient10() {
        XCTAssert((sut.strIngredient10 as Any) is String?)
    }
    
    func test_strIngredient11() {
        XCTAssert((sut.strIngredient11 as Any) is String?)
    }
    
    func test_strIngredient12() {
        XCTAssert((sut.strIngredient12 as Any) is String?)
    }
    
    func test_strIngredient13() {
        XCTAssert((sut.strIngredient13 as Any) is String?)
    }
    
    func test_strIngredient14() {
        XCTAssert((sut.strIngredient14 as Any) is String?)
    }
    
    func test_strIngredient15() {
        XCTAssert((sut.strIngredient15 as Any) is String?)
    }
    
    func test_strIngredient16() {
        XCTAssert((sut.strIngredient16 as Any) is String?)
    }
    
    func test_strIngredient17() {
        XCTAssert((sut.strIngredient17 as Any) is String?)
    }
    
    func test_strIngredient18() {
        XCTAssert((sut.strIngredient18 as Any) is String?)
    }
    
    func test_strIngredient19() {
        XCTAssert((sut.strIngredient19 as Any) is String?)
    }
    
    func test_strIngredient20() {
        XCTAssert((sut.strIngredient20 as Any) is String?)
    }
    
    func test_strMeasure1() {
        XCTAssert((sut.strMeasure1 as Any) is String?)
    }
    
    func test_strMeasure2() {
        XCTAssert((sut.strMeasure2 as Any) is String?)
    }
    
    func test_strMeasure3() {
        XCTAssert((sut.strMeasure3 as Any) is String?)
    }
    
    func test_strMeasure4() {
        XCTAssert((sut.strMeasure4 as Any) is String?)
    }
    
    func test_strMeasure5() {
        XCTAssert((sut.strMeasure5 as Any) is String?)
    }
    
    func test_strMeasure6() {
        XCTAssert((sut.strMeasure6 as Any) is String?)
    }
    
    func test_strMeasure7() {
        XCTAssert((sut.strMeasure7 as Any) is String?)
    }
    
    func test_strMeasure8() {
        XCTAssert((sut.strMeasure8 as Any) is String?)
    }
    
    func test_strMeasure9() {
        XCTAssert((sut.strMeasure9 as Any) is String?)
    }
    
    func test_strMeasure10() {
        XCTAssert((sut.strMeasure10 as Any) is String?)
    }
    
    func test_strMeasure11() {
        XCTAssert((sut.strMeasure11 as Any) is String?)
    }
    
    func test_strMeasure12() {
        XCTAssert((sut.strMeasure12 as Any) is String?)
    }
    
    func test_strMeasure13() {
        XCTAssert((sut.strMeasure13 as Any) is String?)
    }
    
    func test_strMeasure14() {
        XCTAssert((sut.strMeasure14 as Any) is String?)
    }
    
    func test_strMeasure15() {
        XCTAssert((sut.strMeasure15 as Any) is String?)
    }
    
    func test_strMeasure16() {
        XCTAssert((sut.strMeasure16 as Any) is String?)
    }
    
    func test_strMeasure17() {
        XCTAssert((sut.strMeasure17 as Any) is String?)
    }
    
    func test_strMeasure18() {
        XCTAssert((sut.strMeasure18 as Any) is String?)
    }
    
    func test_strMeasure19() {
        XCTAssert((sut.strMeasure19 as Any) is String?)
    }
    
    func test_strMeasure20() {
        XCTAssert((sut.strMeasure20 as Any) is String?)
    }
    
    func test_strMealThumb() {
        XCTAssert((sut.strMealThumb as Any) is String?)
    }
    
    func test_dateModified() {
        XCTAssert((sut.dateModified as Any) is String?)
    }
}
