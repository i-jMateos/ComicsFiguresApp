//
//  UltimateComicViewModel.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import Foundation

class UltimateComicsViewModel: ObservableObject {
    @Published var comics: [Comic] = []

    init() {
        comics = generateComics(for: .ultimate)
    }

    func toggleOwned(for comic: Comic) {
        if let index = comics.firstIndex(where: { $0.id == comic.id }) {
            comics[index].owned.toggle()
        }
    }

    func toggleFavorite(for comic: Comic) {
        if let index = comics.firstIndex(where: { $0.id == comic.id }) {
            comics[index].favorite.toggle()
        }
    }
}

