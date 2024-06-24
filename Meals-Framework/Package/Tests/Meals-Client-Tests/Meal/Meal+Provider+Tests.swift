//
//  Meal+Provider+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models
import Mocks
import Networking

@testable import Meals_Client

final class Meal_Provider_Tests: XCTestCase {
    
    var client: Meal.Client? { didSet {
        guard let client else { return }
        sut = .init(client: client)
    }}
    var sut: Meal.Provider!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
        client = nil
    }
    
    // MARK: -
    
    func test_nil() async throws {
        client = .inject(meal: { _ in nil })
        XCTAssertEqual(
            sut.state,
            .idle
        )
        await sut.fetch(id: "")
        XCTAssertEqual(
            sut.state,
            .failure(Network.Error.unknown("Missing `Meal`"))
        )
    }
    
    func test_meal() async throws {
        let meal = try XCTUnwrap(Meal.preview(for: .bananaPancakes))
        client = .inject(meal: { _ in meal })
        XCTAssertEqual(
            sut.state,
            .idle
        )
        await sut.fetch(id: "")
        XCTAssertEqual(
            sut.state,
            .success(meal)
        )
    }
    
    func test_network_error() async throws {
        client = .inject(meal: { _ in throw Network.Error.missingURL })
        XCTAssertEqual(
            sut.state,
            .idle
        )
        await sut.fetch(id: "")
        XCTAssertEqual(
            sut.state,
            .failure(Network.Error.missingURL)
        )
    }
    
    func test_unexpected_error() async throws {
        client = .inject(meal: { _ in throw NSError(domain: "", code: 1) })
        XCTAssertEqual(
            sut.state,
            .idle
        )
        await sut.fetch(id: "")
        XCTAssertEqual(
            sut.state,
            .failure(Network.Error.unexpected(NSError(domain: "", code: 1)))
        )
    }
}
