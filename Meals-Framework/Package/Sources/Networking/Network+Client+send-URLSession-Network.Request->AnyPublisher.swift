//
//  Network+Client+send-URLSession-Network.Request->AnyPublisher.swift
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
    ) -> AnyPublisher<T, Network.Error> {
        do {
            let urlRequest = try urlRequest(for: request)
            return send(
                session: session,
                urlRequest: urlRequest
            )
        } catch {
            return Fail(
                error: error as? Network.Error
                ?? Network.Error.unexpected(error)
            )
            .eraseToAnyPublisher()
        }
    }
}
