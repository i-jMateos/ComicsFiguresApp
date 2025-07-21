//
//  ColorComicsViewModel.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import Foundation
import SwiftUI

@MainActor
class ColorComicsViewModel: ObservableObject {
    @Published var sagas: [Saga] = []

    private let ownedService = OwnedStorageService()
    private let favoriteService = FavoriteStorageService()

    init() {
        let allComics = generateColorComics().map { comic in
            var comicModificable = comic
            comicModificable.owned = ownedService.loadOwned().contains(comic.id)
            comicModificable.favorite = favoriteService.isFavorite(comic.id)
            return comicModificable
        }

        sagas = [
            Saga(
                name: "Saga Origen",
                color: .sagaOrigen,
                comics: Array(allComics[0..<8])
            ),
            Saga(
                name: "Saga Cor Petit",
                color: .sagacorpetit,
                comics: Array(allComics[8..<12])
            ),
            Saga(
                name: "Guerrers de l'espai",
                color: .sagaguerrersIcelula,
                comics: Array(allComics[12..<15])
            ),
            Saga(
                name: "Freezer",
                color: .sagaFreezer,
                comics: Array(allComics[15..<21])
            ),
            Saga(
                name: "Cèl·lula",
                color: .sagaguerrersIcelula,
                comics: Array(allComics[21..<27])
            ),
            Saga(
                name: "Boo",
                color: .sagaBu,
                comics: Array(allComics[27..<32])
            )
        ]
    }

    func toggleOwned(for comic: Comic) {
        if let indexSaga = sagas.firstIndex(where: { $0.comics.contains(where: { $0.id == comic.id }) }),
           let indexComic = sagas[indexSaga].comics.firstIndex(where: { $0.id == comic.id }) {
            sagas[indexSaga].comics[indexComic].owned.toggle()
            let allIDs = sagas.flatMap { $0.comics.filter { $0.owned }.map { $0.id } }
            ownedService.saveOwned(Set(allIDs))

        }
    }

    func toggleFavorite(for comic: Comic) {
        if let indexSaga = sagas.firstIndex(where: { $0.comics.contains(where: { $0.id == comic.id }) }),
           let indexComic = sagas[indexSaga].comics.firstIndex(where: { $0.id == comic.id }) {
            sagas[indexSaga].comics[indexComic].favorite.toggle()
            let allIDs = sagas.flatMap { $0.comics.filter { $0.favorite }.map { $0.id } }
            favoriteService.save(allIDs)
        }
    }
}
