//
//  Article.swift
//  
//
//  Created by Savannah Streitman on 4/8/22.
//

import Foundation
struct Response: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let id: UUID = UUID()
    let author: String?
    let url: String
    let source, title: String
    let articleDescription: String?
    let image: String?
    let date: Date

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}
t
