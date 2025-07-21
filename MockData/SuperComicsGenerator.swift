//
//  SuperComicsGenerator.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import Foundation

func generateSuperComics() -> [Comic] {
    (1...18).map {
        Comic(
            id: "super_\($0)",
            title: "Super Volum \($0)",
            imageName: "super\($0)",
            owned: false,
            favorite: false
        )
    }
}
