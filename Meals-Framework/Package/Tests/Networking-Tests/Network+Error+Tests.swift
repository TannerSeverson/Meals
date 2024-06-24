//
//  Network+Error+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest

@testable import Networking

final class Network_Error_Tests: XCTestCase {
    
    func test_decoding() {
        XCTAssertNoThrow(Network.Error.decoding)
    }
    
    func test_encoding() {
        XCTAssertNoThrow(Network.Error.encoding)
    }
    
    func test_missingURL() {
        XCTAssertNoThrow(Network.Error.missingURL)
    }
    
    func test_noHTTPURLResponse() {
        XCTAssertNoThrow(Network.Error.noHTTPURLResponse)
    }
    
    func test_status() {
        XCTAssertNoThrow(Network.Error.status)
    }
    
    func test_unexpected() {
        XCTAssertNoThrow(Network.Error.unexpected)
    }
    
    func test_unknown() {
        XCTAssertNoThrow(Network.Error.unknown)
    }
}
