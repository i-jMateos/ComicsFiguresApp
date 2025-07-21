//
//  ComicSearchResult.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 17/7/25.
//

import SwiftUI
struct ComicSearchResult: Identifiable {
    let id = UUID()
    let title: String
    let collection: String
    let saga: String
    let comic: Comic
}
