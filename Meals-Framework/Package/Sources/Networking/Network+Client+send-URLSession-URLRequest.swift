//
//  Network+Client+send-URLSession-URLRequest.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Combine
import Foundation

extension Network.Client {
    
    static func send(
        session: URLSession,
        urlRequest: URLRequest
    ) -> AnyPublisher<Data, Network.Error> {
        session
            .dataTaskPublisher(for: urlRequest)
            .tryMap(validateResponse)
            .mapError(mapNetworkError)
            .eraseToAnyPublisher()
    }
}
