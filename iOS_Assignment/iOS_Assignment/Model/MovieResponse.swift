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
    let pageNumber: Int?
    let movies: [Movie]?
    
}

// MARK: - Movie
struct Movie: Codable {
    let id: Int?
    let url: String?
    let imdbCode: String?
    let title: String?
    let titleEnglish: String?
    let titleLong: String?
    let slug: String?
    let year: Int?
    let rating: Double?
    let runtime: Int?
    let genres: [String]?
    let summary: String?
    let descriptionFull: String?
    let synopsis: String?
    let ytTrailerCode: String?
    let language: String?
    let mpaRating: String?
    let backgroundImage: String?
    let backgroundImageOriginal: String?
    let smallCoverImage: String?
    let mediumCoverImage: String?
    let largeCoverImage: String?
    let state: String?
    let dateUploaded: String?
    let dateUploadedUnix: Int?
    
}

