//
//  PeliculasComicsGenerator.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 17/7/25.
//

import Foundation

func generatePeliculasComics() -> [Comic] {
    (1...9).map {
        Comic(id: "movie_\($0)", title: "Pel·lícula \($0)", imageName: "pelicula\($0)", owned: false, favorite: false)
    }
}
