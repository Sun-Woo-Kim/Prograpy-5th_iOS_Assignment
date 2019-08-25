//
//  MovieRequest.swift
//  iOS_Assignment
//
//  Created by 김선우 on 8/25/19.
//  Copyright © 2019 Harry Kim. All rights reserved.
//

import Foundation

struct MovieRquest: Codable {
    var minimum_rating: Int
    var limit: Int = 10
    
    init(rating: Int) {
        minimum_rating = rating
    }
}
