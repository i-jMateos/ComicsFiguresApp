//
//  ComicsViewModel.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import Foundation

class ComicsViewModel: ObservableObject {
    @Published var comics: [Comic]

    init(comics: [Comic] = []) {
        // Si no pasas nada, genera los primeros 8 cómics por ejemplo
        self.comics = comics.isEmpty ? (1...8).map {
            Comic(id: "\($0)", title: "Volum \($0)", imageName: "\($0)", owned: false, favorite: false)
        } : comics
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
