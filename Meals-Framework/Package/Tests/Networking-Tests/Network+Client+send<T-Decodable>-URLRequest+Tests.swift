//
//  Network+Client+send<T-Decodable>-URLRequest+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Combine
import URLSession_Stub

@testable import Networking

final class Network_Client_send_Decodable_URLRequest_Tests: XCTestCase {
    
    var sut: AnyPublisher<NetworkData, Network.Error>!
    var networkData: NetworkData!
    var data: Data!
    var expectation: XCTestExpectation!
    var cancellables: Set<AnyCancellable>!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = NetworkClient.send<NetworkData>(
            session: .stub,
            urlRequest: URLRequest(url: URL(string: "www.domain.com")!)
        )
        networkData = .init(data: "Data".data(using: .utf8)!)
        data = try! JSONEncoder().encode(networkData)
        expectation = .init(description: "Publisher")
        cancellables = []
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
        networkData = nil
        data = nil
        expectation = nil
        cancellables = nil
        URLProtocolStub.response = nil
        URLProtocolStub.error = nil
    }
    
    // MARK: -
    
    func test_success() async throws {
        URLProtocolStub.response = .init(
            urlResponse: HTTPURLResponse(),
            data: data
        )
        sut
            .sink { result in
                switch result {
                    case .finished:
                        self.expectation.fulfill()
                        break
                    case let .failure(error):
                        XCTFail(error.localizedDescription)
                        break
                }
            } receiveValue: { value in
                XCTAssertEqual(
                    value,
                    self.networkData
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
