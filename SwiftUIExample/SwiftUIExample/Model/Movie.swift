//
//  Movie.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 02/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import Foundation


enum OriginalLanguage: String, Codable {
    case en = "en"
    case es = "es"
}

// MARK: - Result
struct Movie: Codable, Identifiable {
    let popularity: Double? = 0
    let voteCount: Int? = 0
    let video: Bool? = false
    let posterPath: String?
    let id: Int? = 0
    let adult: Bool? = false
    let backdropPath: String? = ""
    let originalLanguage: OriginalLanguage? = .en
    let originalTitle: String? = ""
    let genreIDS: [Int]? = []
    var title: String? = ""
    var voteAverage: Double? = 0
    var overview : String? = ""
    let releaseDate: String? = ""

    enum CodingKeys: String, CodingKey {
        case popularity
        case voteCount = "vote_count"
        case video
        case posterPath = "poster_path"
        case id, adult
        case backdropPath = "backdrop_path"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case genreIDS = "genre_ids"
        case title
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"
    }
    
    init(title: String, overview: String, voteAverage: Double, posterPath: String) {
        self.title = title
        self.overview = overview
        self.voteAverage = voteAverage
        self.posterPath = posterPath
    }
}


