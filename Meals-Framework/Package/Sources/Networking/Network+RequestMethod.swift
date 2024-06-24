//
//  Network+RequestMethod.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Network {
    
    public enum RequestMethod: String, Codable, CaseIterable {
        case get
        case head
        case post
        case put
        case delete
        case connect
        case options
        case trace
        case patch
    }
}
