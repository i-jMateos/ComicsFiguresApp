//
//  ComicsListViewModel.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import SwiftUI

class ComicsListViewModel: ObservableObject {
    @Published var sections: [ComicSection] = [
        ComicSection(
            title: "Color",
            imageName: "color_cover",
            destination: AnyView(ColorComicsView()),
            progress: "12/32" // ← Ejemplo real
        ),
        ComicSection(
            title: "Ultimate",
            imageName: "ultimate_cover",
            destination: AnyView(Text("Ultimate")),
            progress: "5/34"
        ),
        ComicSection(
            title: "Legend",
            imageName: "legend_cover",
            destination: AnyView(Text("Legend")),
            progress: "0/22"
        ),
        ComicSection(
            title: "Super",
            imageName: "super_cover",
            destination: AnyView(Text("Super")),
            progress: "3/12"
        ),
        ComicSection(
            title: "Pel·lícules",
            imageName: "movies_cover",
            destination: AnyView(Text("Pel·lícules")),
            progress: "1/9"
        )
    ]
}
