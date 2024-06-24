//
//  Mockable+data.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Mockable {
    
    public var data: Data {
        try! Data(
            contentsOf: URL(
                fileURLWithPath: Bundle
                    .module
                    .path(
                        forResource: model + "+" + self.rawValue,
                        ofType: "json"
                    )!
            )
        )
    }
}
