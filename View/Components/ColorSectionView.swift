//
//  Untitled 3.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import SwiftUI

struct ColorSectionView: View {
    @Binding var saga: Saga
    let namespace: Namespace.ID
    let onTapComic: (Comic) -> Void
    let onToggleOwned: (Comic) -> Void
    let onToggleFavorite: (Comic) -> Void

    var body: some View {
        Section(header: Text(saga.name)
            .font(.title2.bold())
            .padding(.horizontal)
            .padding(.bottom, -8)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(saga.color)) {

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100), spacing: 16)], spacing: 16) {
                ForEach(saga.comics) { comic in
                    ComicGridItemView(
                        comic: comic,
                        namespace: namespace,
                        onTap: { onTapComic(comic) },
                        onToggleOwned: { onToggleOwned(comic) },
                        onToggleFavorite: { onToggleFavorite(comic) }
                    )
                }
            }
            .padding(.horizontal)
        }
    }
}
