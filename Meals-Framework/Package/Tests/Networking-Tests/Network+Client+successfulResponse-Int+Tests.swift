//
//  Network+Client+successfulResponse-Int+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest

@testable import Networking

final class Network_Client_successfulResponse_Int_Tests: XCTestCase {
    
    func test_successfulResponse_1() {
        XCTAssertEqual(
            NetworkClient.successfulResponse(1),
            false
        )
    }
    
    func test_successfulResponse_199() {
        XCTAssertEqual(
            NetworkClient.successfulResponse(199),
            false
        )
    }
    
    func test_successfulResponse_200() {
        XCTAssertEqual(
            NetworkClient.successfulResponse(200),
            true
        )
    }
    
    func test_successfulResponse_299() {
        XCTAssertEqual(
            NetworkClient.successfulResponse(299),
            true
        )
    }
    
    func test_successfulResponse_300() {
        XCTAssertEqual(
            NetworkClient.successfulResponse(300),
            false
        )
    }
    
    func test_successfulResponse_500() {
        XCTAssertEqual(
            NetworkClient.successfulResponse(500),
            false
        )
    }
}
