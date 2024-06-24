//
//  Network+State.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Networking

extension Network {
    
    public enum State<Value: Equatable>: Equatable {
        case idle
        case loading
        case success(Value)
        case failure(Network.Error)
    }
}
