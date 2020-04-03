//
//  PageResults.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 03/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import Foundation


struct PageResults: Codable {
    let page: Int
    let results: [Movie]
    let totalResults, totalPages: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalResults = "total_results"
        case totalPages = "total_pages"
    }
}

