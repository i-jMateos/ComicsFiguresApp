//
//  LegendComicsGenerator.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 17/7/25.
//

import Foundation

func generateLegendComics() -> [Comic] {
    (1...22).map {
        Comic(id: "legend_\($0)", title: "Legend Volum \($0)", imageName: "legend\($0)", owned: false, favorite: false)
    }
}
