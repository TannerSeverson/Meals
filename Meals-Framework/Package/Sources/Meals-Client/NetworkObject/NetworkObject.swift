//
//  NetworkObject.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Networking

public protocol NetworkObject: ObservableObject {
    associatedtype Output: Equatable
    var state: Network.State<Output> { get }
}
