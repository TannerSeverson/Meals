//
//  Meals+Client+Request.swift
//
//
//  Created by Tanner Severson on 6/23/24.
//

import Foundation
import Meals_Models
import Networking

extension Meals.Client {
    
    struct Request: Network.Request {
        
        var scheme: String {
            "https"
        }
        
        var path: String {
            "/api/json/v1/1/filter.php"
        }
        
        var method: Network.RequestMethod {
            .get
        }
        
        var header: [String : String]? {
            nil
        }
        
        var body: [String : String]? {
            nil
        }
        
        var queryItems: [URLQueryItem]?
        
        // MARK: -
        
        init(category: Meal.Category) {
            self.queryItems = [
                .init(
                    name: "c",
                    value: category.rawValue
                )
            ]
        }
    }
}
