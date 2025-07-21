import SwiftUI

struct ColorComicSectionView: View {
    @Binding var saga: Saga
    var onTapComic: (Comic) -> Void
    var onToggleOwned: (Comic) -> Void
    var onToggleFavorite: (Comic) -> Void
    var namespace: Namespace.ID

    var body: some View {
        Section {
            ForEach($saga.comics) { $comic in
                ComicRow(
                    comic: $comic,
                    sagaColor: saga.color,
                    imageNamespace: namespace,
                    onTap: {
                        onTapComic(comic)
                    },
                    onToggleOwned: {
                        onToggleOwned(comic)
                    },
                    onToggleFavorite: {
                        onToggleFavorite(comic)
                    }
                )
            }
        } header: {
            HStack {
                Text(saga.name)
                    .font(.title3).bold().foregroundColor(.white)
                Spacer()
                Text(saga.progressText)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.85))
            }
            .padding(.horizontal)
            .padding(.vertical, 6)
            .background(saga.color)
            .cornerRadius(10)
        }
    }
}
//
//  Untitled.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

