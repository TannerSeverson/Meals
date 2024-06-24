//
//  Meals+Preview+imageURL.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

extension Meals.Preview {
    
    public var imageURL: URL? {
        URL(string: strMealThumb)
    }
}
