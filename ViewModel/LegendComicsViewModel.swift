//
//  LegendComicsViewModel.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import SwiftUI

@MainActor
class LegendComicsViewModel: ObservableObject {
    @Published var sagas: [Saga] = []

    init() {
        let comics = generateLegendComics()

        sagas = [
            Saga(name: "Saga 1", color: .sagaFreezer, comics: Array(comics[0..<6])),
            Saga(name: "Saga 2", color: .sagaBu, comics: Array(comics[6..<12])),
            Saga(name: "Saga 3", color: .sagaOrigen, comics: Array(comics[12..<22]))
        ]
    }

    func toggleOwned(for comic: Comic) {
        if let sagaIndex = sagas.firstIndex(where: { $0.comics.contains(where: { $0.id == comic.id }) }) {
            if let comicIndex = sagas[sagaIndex].comics.firstIndex(where: { $0.id == comic.id }) {
                sagas[sagaIndex].comics[comicIndex].owned.toggle()
            }
        }
    }

    func toggleFavorite(for comic: Comic) {
        if let sagaIndex = sagas.firstIndex(where: { $0.comics.contains(where: { $0.id == comic.id }) }) {
            if let comicIndex = sagas[sagaIndex].comics.firstIndex(where: { $0.id == comic.id }) {
                sagas[sagaIndex].comics[comicIndex].favorite.toggle()
            }
        }
    }
}
