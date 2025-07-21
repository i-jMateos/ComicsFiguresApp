//
//  UltimateComicsView.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import SwiftUI

struct UltimateComicsView: View {
    @StateObject private var vm = UltimateComicsViewModel()

    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(vm.comics) { comic in
                    ComicGridItemView(
                        comic: comic,
                        onToggleOwned: {
                            vm.toggleOwned(for: comic)
                        },
                        onToggleFavorite: {
                            vm.toggleFavorite(for: comic)
                        }
                    )
                }
            }
            .padding()
        }
        .navigationTitle("Ultimate")
    }
}
