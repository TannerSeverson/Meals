//
//  Network+Client+send-URLSession-Network.Request->T.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Combine
import Foundation

extension Network.Client {
    
    public static func send<T: Decodable>(
        session: URLSession = session,
        request: Network.Request
    ) async throws -> T {
        try await withCheckedThrowingContinuation { continuation in
            var cancellables = Set<AnyCancellable>()
            send(
                session: session,
                request: request
            )
            .first()
            .sink { result in
                switch result {
                    case .finished:
                        return
                    case let .failure(error):
                        continuation.resume(throwing: error)
                }
                cancellables = []
            } receiveValue: { value in
                continuation.resume(with: .success(value))
            }
            .store(in: &cancellables)
        }
    }
}
