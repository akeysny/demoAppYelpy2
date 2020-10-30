//
//  Restaurant.swift
//  Yelpy
//
//  Created by Anna Taylor on 10/24/20.
//  Copyright © 2020 memo. All rights reserved.
//

import Foundation

class Restaurant {
    
    var imageUrl: URL?
    var url: URL?
    
    var name: String
    var mainCategory: String
    var phone: String
    
    var rating: Double
    var reviews: Int
    
    init(dict: [String: Any]){
        imageUrl = URL(string: dict["image_url"] as!
                        String)
        name = dict["name"] as! String
        phone = dict["display_phone"] as! String
        rating = dict["rating"] as! Double
        reviews = dict["review_count"] as! Int
        mainCategory = Restaurant.getMainCategory(dict: dict)
        
    }
    
    static func getMainCategory(dict: [String: Any]) -> String {
        let categoriesArray = dict["categories"] as! [[String:Any]]
        return categoriesArray[0]["title"] as! String
    }
    
}
