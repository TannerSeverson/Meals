//
//  Meals+Provider+Tests.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import XCTest
import Meals_Models
import Mocks
import Networking

@testable import Meals_Client

final class Meals_Provider_Tests: XCTestCase {
    
    var client: Meals.Client? { didSet {
        guard let client else { return }
        sut = .init(client: client)
    }}
    var sut: Meals.Provider!
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
        client = nil
    }
    
    // MARK: -
    
    func test_beef() async throws {
        client = .inject(meals: { _ in .preview(for: .beef) })
        XCTAssertEqual(
            sut.state,
            .idle
        )
        await sut.fetch(category: .beef)
        XCTAssertEqual(
            sut.state,
            .success(Meals.preview(for: .beef).meals)
        )
    }
    
    func test_chicken() async throws {
        client = .inject(meals: { _ in .preview(for: .chicken) })
        XCTAssertEqual(
            sut.state,
            .idle
        )
        await sut.fetch(category: .beef)
        XCTAssertEqual(
            sut.state,
            .success(Meals.preview(for: .chicken).meals)
        )
    }
    
    func test_network_error() async throws {
        client = .inject(meals: { _ in throw Network.Error.missingURL })
        XCTAssertEqual(
            sut.state,
            .idle
        )
        await sut.fetch(category: .beef)
        XCTAssertEqual(
            sut.state,
            .failure(Network.Error.missingURL)
        )
    }
    
    func test_unexpected_error() async throws {
        client = .inject(meals: { _ in throw NSError(domain: "", code: 1) })
        XCTAssertEqual(
            sut.state,
            .idle
        )
        await sut.fetch(category: .beef)
        XCTAssertEqual(
            sut.state,
            .failure(Network.Error.unexpected(NSError(domain: "", code: 1)))
        )
    }
}
