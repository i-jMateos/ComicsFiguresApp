//
//  UltimateComicGenerator.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 17/7/25.
//


import Foundation

func generateUltimateComics() -> [Comic] {
    (1...34).map {
        Comic(id: "ultimate_\($0)", title: "Ultimate Volum \($0)", imageName: "ultimate\($0)", owned: false, favorite: false)
    }
}
