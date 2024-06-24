//
//  Network+Client.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Combine
import Foundation

extension Network {
    
    public protocol Client {
        
        static var session: URLSession { get }
    }
}
