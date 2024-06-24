//
//  Meal+Client+Tests.swift
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

final class Meal_Client_Tests: XCTestCase {
    
    var sut: Meal.Client!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        Meal.Client.session = .stub
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
            String(reflecting: sut.meal),
            String(reflecting: Meal.Client.fetch(id:))
        )
    }
    
    func test_stub_fetch_Meal() async throws {
        URLProtocolStub.response = .init(
            urlResponse: HTTPURLResponse(),
            data: Meal.FromID.Mock.bananaPancakes.data
        )
        do {
            let mealFromID = try await Meal.Client.fetch(id: "52855")
            XCTAssertEqual(
                mealFromID,
                Meal.preview(for: .bananaPancakes)
            )
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_stub_noResponse() async throws {
        URLProtocolStub.response = .init()
        do {
            _ = try await Meal.Client.fetch(id: "52855")
        } catch {
            XCTAssertEqual(
                error as? Network.Error,
                .noHTTPURLResponse
            )
        }
    }
    
    func test_stub_fetch_Meal_with_Error() async throws {
        URLProtocolStub.error = Network.Error.noHTTPURLResponse
        do {
            _ = try await Meal.Client.fetch(id: "52855")
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
    
    func test_stub_fetch_Meal_FromID() async throws {
        URLProtocolStub.response = .init(
            urlResponse: HTTPURLResponse(),
            data: Meal.FromID.Mock.bananaPancakes.data
        )
        do {
            let mealFromID = try await Meal.Client.fetch(from: "52855")
            XCTAssertEqual(
                mealFromID,
                try Meal.FromID.preview(for: .bananaPancakes)
            )
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
    
    func test_stub_fetch_Meal_FromID_noResponse() async throws {
        URLProtocolStub.response = .init()
        do {
            _ = try await Meal.Client.fetch(from: "52855")
        } catch {
            XCTAssertEqual(
                error as? Network.Error,
                .noHTTPURLResponse
            )
        }
    }
    
    func test_stub_fetch_Meal_FromID_with_Error() async throws {
        URLProtocolStub.error = Network.Error.noHTTPURLResponse
        do {
            _ = try await Meal.Client.fetch(from: "52855")
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
