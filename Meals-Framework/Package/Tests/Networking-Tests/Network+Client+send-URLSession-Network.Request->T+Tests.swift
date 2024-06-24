//
//  Network+Client+send-URLSession-Network.Request->T+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Networking
import URLSession_Stub

@testable import Networking

final class Network_Client_send_URLSession_Network_Request_T_Tests: XCTestCase {
    
    var networkData: NetworkData!
    var request: NetworkRequest!
    var data: Data!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        request = NetworkRequest(
            host: "www.domain.com",
            scheme: "https",
            path: "/path",
            method: .get,
            header: ["Header": "HeaderValue"],
            body: ["Body": "BodyValue"],
            queryItems: [.init(name: "Name", value: "Value")]
        )
        networkData = .init(data: "Data".data(using: .utf8)!)
        data = try! JSONEncoder().encode(networkData)
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        request = nil
        networkData = nil
        data = nil
        URLProtocolStub.response = nil
        URLProtocolStub.error = nil
    }
    
    // MARK: -
    
    func test_success() async throws {
        URLProtocolStub.response = .init(urlResponse: HTTPURLResponse(), data: data)
        do {
            let response: NetworkData = try await NetworkClient.send(
                session: .stub,
                request: request
            )
            XCTAssertEqual(
                response,
                networkData
            )
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_noResponse() async throws {
        URLProtocolStub.response = .init(urlResponse: URLResponse())
        do {
            let _: NetworkData = try await NetworkClient.send(
                session: .stub,
                request: request
            )
            XCTFail()
        } catch {
            XCTAssertEqual(
                error as? Network.Error,
                .noHTTPURLResponse
            )
        }
    }
    
    func test_error() async throws {
        URLProtocolStub.error = Network.Error.missingURL
        do {
            let _: NetworkData = try await NetworkClient.send(
                session: .stub,
                request: request
            )
            XCTFail()
        } catch {
            if case let .unexpected(error) = error as? Network.Error {
                let nsError = error as NSError
                XCTAssertEqual(
                    nsError.userInfo["Error"] as? Network.Error,
                    .missingURL
                )
            }
        }
    }
}
