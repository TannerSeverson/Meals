//
//  NetworkClient.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import URLSession_Stub

@testable import Networking

struct NetworkClient: Network.Client {
    
    static var session: URLSession = .stub
}
