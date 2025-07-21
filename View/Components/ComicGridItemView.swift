//
//  Untitled 12.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//


import SwiftUI

struct ComicGridItemView: View {
    let comic: Comic
    var namespace: Namespace.ID? = nil
    var onTap: (() -> Void)? = nil
    let onToggleOwned: () -> Void
    let onToggleFavorite: () -> Void

    var body: some View {
        VStack {
            Image(comic.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .grayscale(comic.owned ? 0 : 1)
                .opacity(comic.owned ? 1 : 0.5)
                .frame(height: 100)
                .onTapGesture {
                    if let onTap = onTap {
                        onTap()
                    } else {
                        onToggleOwned()
                    }
                }

            Text(comic.title)
                .font(.caption)

            Button {
                onToggleFavorite()
            } label: {
                Image(systemName: comic.favorite ? "heart.fill" : "heart")
                    .foregroundColor(comic.favorite ? .green : .gray)
            }
            .buttonStyle(.plain)
        }
        .padding(4)
    }
}
