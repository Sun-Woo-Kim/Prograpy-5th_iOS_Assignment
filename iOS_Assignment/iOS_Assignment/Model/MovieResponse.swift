//
//  MovieResponse.swift
//  iOS_Assignment
//
//  Created by 김선우 on 8/25/19.
//  Copyright © 2019 Harry Kim. All rights reserved.
//

import Foundation

// MARK: - MovieResponse
struct MovieResponse: Codable {
    let status: String?
    let statusMessage: String?
    let data: DataClass?

}

// MARK: - DataClass
struct DataClass: Codable {
    let movieCount: Int?
    let limit: Int?
    let movies: [Movie]?
    
}

// MARK: - Movie
struct Movie: Codable {
    let title: String?
    let rating: Double?
}

