//
//  Network+Error+errorDescription+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest

@testable import Networking

final class Network_Error_errorDescription_Tests: XCTestCase {
    
    var sut: Network.Error!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_decoding() {
        sut = .decoding(.dataCorrupted(.init(codingPath: [], debugDescription: "")))
        XCTAssertEqual(
            sut.errorDescription,
            "Decoding Error"
        )
    }
    
    func test_encoding() {
        sut = .encoding(.invalidValue("", .init(codingPath: [], debugDescription: "")))
        XCTAssertEqual(
            sut.errorDescription,
            "Encoding Error"
        )
    }
    
    func test_missingURL() {
        sut = .missingURL
        XCTAssertEqual(
            sut.errorDescription,
            "Missing URL"
        )
    }
    
    func test_noHTTPURLResponse() {
        sut = .noHTTPURLResponse
        XCTAssertEqual(
            sut.errorDescription,
            "No Response"
        )
    }
    
    func test_status() {
        sut = .status(123)
        XCTAssertEqual(
            sut.errorDescription,
            "Status Code 123"
        )
    }
    
    func test_unexpected() {
        sut = .unexpected(NSError(domain: "", code: 1))
        XCTAssertEqual(
            sut.errorDescription,
            "Unexpected Error \(NSError(domain: "", code: 1))"
        )
    }
    
    func test_unknown() {
        sut = .unknown("Error")
        XCTAssertEqual(
            sut.errorDescription,
            "Error"
        )
    }
}
