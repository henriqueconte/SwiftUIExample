//
//  Movie.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 02/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import Foundation


struct Movie: Identifiable, Decodable, Encodable, Hashable {
    var id: String = UUID().uuidString
    let title: String
    let overview: String
    let averageRating: Double
    let posterPath: String
    let posterImage: Data?
    
    init(title: String, overview: String, averageRating: Double, posterPath: String, posterImage: Data?) {
        self.title = title
        self.overview = overview
        self.averageRating = averageRating
        self.posterPath = posterPath
        self.posterImage = posterImage
    }
}
