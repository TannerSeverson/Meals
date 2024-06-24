//
//  Network+Client+send-URLSession-URLRequest+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Combine
import Networking
import URLSession_Stub

@testable import Networking

final class Network_Client_send_URLSession_URLRequest_Tests: XCTestCase {
    
    var sut: AnyPublisher<Data, Network.Error>!
    var data: Data!
    var expectation: XCTestExpectation!
    var cancellables: Set<AnyCancellable>!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = NetworkClient.send(
            session: .stub,
            urlRequest: URLRequest(url: URL(string: "www.domain.com")!)
        )
        data = "Data".data(using: .utf8)!
        expectation = .init(description: "Publisher")
        cancellables = []
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
        data = nil
        expectation = nil
        cancellables = nil
        URLProtocolStub.response = nil
        URLProtocolStub.error = nil
    }
    
    // MARK: -
    
    func test_success() async throws {
        URLProtocolStub.response = .init(urlResponse: HTTPURLResponse(), data: data)
        sut
            .sink { result in
                switch result {
                    case .finished:
                        self.expectation.fulfill()
                    case let .failure(error):
                        XCTFail(error.localizedDescription)
                }
            } receiveValue: { value in
                XCTAssertEqual(
                    value,
                    self.data
                )
            }
            .store(in: &cancellables)
        await fulfillment(of: [expectation], timeout: 1)
    }
    
    func test_noResponse() async throws {
        URLProtocolStub.response = .init(urlResponse: URLResponse())
        sut
            .sink { result in
                switch result {
                    case .finished:
                        XCTFail()
                    case let .failure(error):
                        XCTAssertEqual(
                            error,
                            .noHTTPURLResponse
                        )
                        self.expectation.fulfill()
                }
            } receiveValue: { value in
                XCTFail()
            }
            .store(in: &cancellables)
        await fulfillment(of: [expectation], timeout: 1)
    }
    
    func test_error() async throws {
        URLProtocolStub.error = Network.Error.missingURL
        sut
            .sink { result in
                switch result {
                    case .finished:
                        XCTFail()
                    case let .failure(error):
                        if case let .unexpected(error) = error {
                            let nsError = error as NSError
                            XCTAssertEqual(
                                nsError.userInfo["Error"] as? Network.Error,
                                .missingURL
                            )
                            self.expectation.fulfill()
                        }
                }
            } receiveValue: { value in
                XCTFail()
            }
            .store(in: &cancellables)
        await fulfillment(of: [expectation], timeout: 1)
    }
}
