//
//  Network+Client+mapNetworkError-Error+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest

@testable import Networking

final class Network_Client_mapNetworkError_Error_Tests: XCTestCase {
    
    func test_Network_Error_missingURL() {
        XCTAssertEqual(
            NetworkClient.mapNetworkError(error: Network.Error.missingURL),
            .missingURL
        )
    }
    
    func test_DecodingError() {
        XCTAssertEqual(
            NetworkClient.mapNetworkError(error: DecodingError.dataCorrupted(.init(codingPath: [], debugDescription: ""))),
            .decoding(DecodingError.dataCorrupted(.init(codingPath: [], debugDescription: "")))
        )
    }
    
    func test_unexpected() {
        XCTAssertEqual(
            NetworkClient.mapNetworkError(error: NSError(domain: "", code: 1)),
            .unexpected(NSError(domain: "", code: 1))
        )
    }
}
