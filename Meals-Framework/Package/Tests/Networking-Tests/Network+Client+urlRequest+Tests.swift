//
//  Network+Client+urlRequest+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest

@testable import Networking

final class Network_Client_urlRequest_Tests: XCTestCase {
    
    var sut: NetworkRequest!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = .init(
            host: "www.domain.com",
            scheme: "https",
            path: "/path",
            method: .get,
            header: ["Header": "HeaderValue"],
            body: ["Body": "BodyValue"],
            queryItems: [.init(name: "Name", value: "Value")]
        )
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    // MARK: -
    
    func test_url() {
        do {
            let request = try XCTUnwrap(NetworkClient.urlRequest(for: sut))
            XCTAssertEqual(
                request.url,
                URL(string: "https://www.domain.com/path?Name=Value")
            )
        } catch {
            XCTFail()
        }
    }
    
    func test_httpMethod() {
        let request = try? XCTUnwrap(NetworkClient.urlRequest(for: sut))
        XCTAssertEqual(
            request?.httpMethod,
            "GET"
        )
    }
    
    func test_allHTTPHeaderFields() {
        let request = try? XCTUnwrap(NetworkClient.urlRequest(for: sut))
        XCTAssertEqual(
            request?.allHTTPHeaderFields,
            ["Header": "HeaderValue"]
        )
    }
    
    func test_httpBody() {
        let request = try? XCTUnwrap(NetworkClient.urlRequest(for: sut))
        XCTAssertEqual(
            try JSONDecoder().decode([String: String].self, from: request!.httpBody!),
            ["Body": "BodyValue"]
        )
    }
}
