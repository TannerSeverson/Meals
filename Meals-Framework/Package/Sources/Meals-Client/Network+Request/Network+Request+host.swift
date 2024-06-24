//
//  Network+Request+host.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Networking

extension Network.Request {
    
    var host: String {
        Bundle.main.object(forInfoDictionaryKey: "Host") as? String
        ?? ""
    }
}
