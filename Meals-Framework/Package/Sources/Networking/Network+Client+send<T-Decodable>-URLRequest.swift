//
//  Network+Client+send<T-Decodable>-URLRequest.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Combine
import Foundation

extension Network.Client {
    
    static func send<T: Decodable>(
        session: URLSession,
        urlRequest: URLRequest
    ) -> AnyPublisher<T, Network.Error> {
        send(
            session: session,
            urlRequest: urlRequest
        )
        .decode(type: T.self, decoder: JSONDecoder())
        .mapError(mapNetworkError)
        .eraseToAnyPublisher()
    }
}
