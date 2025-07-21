//
//  Generate Comics.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import Foundation

enum ComicCollectionType {
    case color, ultimate, legend, superDB, movies
}

func generateComics(for type: ComicCollectionType) -> [Comic] {
    switch type {
    case .color:
        return (1...34).map {
            Comic(id: "color_\($0)", title: "Color Volum \($0)", imageName: "\($0)", owned: false, favorite: false)
        }
    case .ultimate:
        return (1...32).map {
            Comic(id: "ultimate_\($0)", title: "Ultimate Volum \($0)", imageName: "ultimate\($0)", owned: false, favorite: false)
        }
    case .legend:
        return (1...22).map {
            Comic(id: "legend_\($0)", title: "Legend Volum \($0)", imageName: "legend\($0)", owned: false, favorite: false)
        }
    case .superDB:
        return (1...12).map {
            Comic(id: "super_\($0)", title: "Super Volum \($0)", imageName: "super\($0)", owned: false, favorite: false)
        }
    case .movies:
        return (1...9).map {
            Comic(id: "movie_\($0)", title: "Pel·lícula \($0)", imageName: "pelicula\($0)", owned: false, favorite: false)
        }
    }
}
