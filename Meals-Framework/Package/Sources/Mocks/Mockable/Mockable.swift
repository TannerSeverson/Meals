//
//  Mockable.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

public protocol Mockable {
    var rawValue: String { get }
    var model: String { get }
}
