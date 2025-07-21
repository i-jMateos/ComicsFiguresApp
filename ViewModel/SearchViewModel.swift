//
//  SearchViewModel.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var query: String = ""
    @Published var results: [ComicSearchResult] = []

    func search(in collections: [(name: String, sagas: [Saga])]) {
        let lowerQuery = query.lowercased()

        results = collections.flatMap { collection in
            collection.sagas.flatMap { saga in
                saga.comics
                    .filter { $0.title.lowercased().contains(lowerQuery) }
                    .map {
                        ComicSearchResult(
                            title: $0.title,
                            collection: collection.name,
                            saga: saga.name,
                            comic: $0
                        )
                    }
            }
        }
    }
}
