//
//  Meals+Client+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models
import Mocks
import Networking
import URLSession_Stub

@testable import Meals_Client

final class Meals_Client_Tests: XCTestCase {
    
    var sut: Meals.Client!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        Meals.Client.session = .stub
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
        URLProtocolStub.response = nil
        URLProtocolStub.error = nil
    }
    
    // MARK: -
    
    func test_liveValue() {
        sut = .liveValue
        XCTAssertEqual(
            String(reflecting: sut.meals),
            String(reflecting: Meals.Client.fetch(category:))
        )
    }
    
    func test_stub_fetch_Category() async throws {
        URLProtocolStub.response = .init(
            urlResponse: HTTPURLResponse(),
            data: Meal.Category.dessert.data
        )
        do {
            let meals = try await Meals.Client.fetch(category: .dessert)
            XCTAssertEqual(
                meals,
                Meals.preview(for: .dessert)
            )
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_stub_noResponse() async throws {
        URLProtocolStub.response = .init(data: Meal.Category.dessert.data)
        do {
            _ = try await Meals.Client.fetch(category: .dessert)
        } catch {
            XCTAssertEqual(
                error as? Network.Error,
                .noHTTPURLResponse
            )
        }
    }
    
    func test_stub_fetch_Category_with_Error() async throws {
        URLProtocolStub.error = Network.Error.noHTTPURLResponse
        do {
            _ = try await Meals.Client.fetch(category: .dessert)
            XCTFail()
        } catch let error {
            if case let .unexpected(error) = error as? Network.Error {
                let nsError = error as NSError
                XCTAssertEqual(
                    nsError.userInfo["Error"] as? Network.Error,
                    .noHTTPURLResponse
                )
            }
        }
    }
}
