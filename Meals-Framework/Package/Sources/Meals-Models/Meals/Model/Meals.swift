//
//  Meals.swift
//  TheMealApp
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation

public struct Meals: Decodable, Hashable {
    
    public let meals: [Meals.Preview]
}
