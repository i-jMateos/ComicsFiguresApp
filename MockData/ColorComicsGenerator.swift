//
//  ColorComicsGenerator.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 17/7/25.
//

import Foundation

func generateColorComics() -> [Comic] {
    (1...34).map {
        Comic(
            id: "color_\($0)",
            title: "Color Volum \($0)",
            imageName: "color\($0)",
            owned: false,
            favorite: false
        )
    }
}
