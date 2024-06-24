//
//  Network+Client+validateResponse-Data-URLResponse+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest

@testable import Networking

final class Network_Client_validateResponse_Data_URLResponse_Tests: XCTestCase {
    
    func test_no_HTTPURLResponse() {
        do {
            _ = try NetworkClient.validateResponse(
                data: Data(),
                urlResponse: .init()
            )
            XCTFail()
        } catch {
            XCTAssertEqual(
                error as? Network.Error,
                .noHTTPURLResponse
            )
        }
    }
    
    func test_statusCodeError() {
        do {
            _ = try NetworkClient.validateResponse(
                data: Data(),
                urlResponse: HTTPURLResponse(url: .init(string: "https://www.themealdb.com/")!, statusCode: 1, httpVersion: nil, headerFields: nil)!
            )
            XCTFail()
        } catch {
            XCTAssertEqual(
                error as? Network.Error,
                .status(1)
            )
        }
    }
    
    func test_valid() {
        do {
            let response = try XCTUnwrap(
                NetworkClient.validateResponse(
                    data: Data(),
                    urlResponse: HTTPURLResponse(url: .init(string: "https://www.themealdb.com/")!, statusCode: 200, httpVersion: nil, headerFields: nil)!
                )
            )
            XCTAssertEqual(
                response,
                Data()
            )
        } catch {
            XCTFail()
        }
    }
}
