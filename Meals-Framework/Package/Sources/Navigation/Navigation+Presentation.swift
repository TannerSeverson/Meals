//
//  Navigation+Presentation.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Navigation {
    
    @Observable
    public class Presentation {
        
        public var item: Navigation.Item?
        
        public init(
            item: Navigation.Item? = nil
        ) {
            self.item = item
        }
    }
}
