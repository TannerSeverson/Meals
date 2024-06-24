//
//  Meals+Client+Request+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models

@testable import Meals_Client

final class Meals_Client_Request_Tests: XCTestCase {
    
    var sut: Meals.Client.Request!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = .init(category: .chicken)
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_host() {
        XCTAssertEqual(
            sut.host,
            ""
        )
    }
    
    func test_scheme() {
        XCTAssertEqual(
            sut.scheme,
            "https"
        )
    }
    
    func test_path() {
        XCTAssertEqual(
            sut.path,
            "/api/json/v1/1/filter.php"
        )
    }
    
    func test_method() {
        XCTAssertEqual(
            sut.method,
            .get
        )
    }
    
    func test_header() {
        XCTAssertEqual(
            sut.header,
            nil
        )
    }
    
    func test_body() {
        XCTAssertEqual(
            sut.body,
            nil
        )
    }
    
    func test_queryItems() {
        XCTAssertEqual(
            sut.queryItems,
            [
                .init(
                    name: "c",
                    value: "chicken"
                )
            ]
        )
    }
}
