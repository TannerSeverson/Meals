//
//  Network+RequestMethod+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest

@testable import Networking

final class Network_RequestMethod_Tests: XCTestCase {
    
    func test_allCases() {
        XCTAssertEqual(
            Network.RequestMethod.allCases.count,
            9
        )
    }
    
    func test_get() {
        XCTAssertNoThrow(Network.RequestMethod.get)
    }
    
    func test_head() {
        XCTAssertNoThrow(Network.RequestMethod.head)
    }
    
    func test_post() {
        XCTAssertNoThrow(Network.RequestMethod.post)
    }
    
    func test_put() {
        XCTAssertNoThrow(Network.RequestMethod.put)
    }
    
    func test_delete() {
        XCTAssertNoThrow(Network.RequestMethod.delete)
    }
    
    func test_connect() {
        XCTAssertNoThrow(Network.RequestMethod.connect)
    }
    
    func test_options() {
        XCTAssertNoThrow(Network.RequestMethod.options)
    }
    
    func test_trace() {
        XCTAssertNoThrow(Network.RequestMethod.trace)
    }
    
    func test_patch() {
        XCTAssertNoThrow(Network.RequestMethod.patch)
    }
}
