//
//  SearchResult.swift
//  Podcast-SwiftUI
//
//  Created by Abdul Basit on 21/06/2025.
//

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Podcast]
}
