//
//  Untitled 2.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//


import SwiftUI

struct ColorComicsView: View {
    @StateObject private var vm = ColorComicsViewModel()
    @Namespace private var imageNamespace

    var body: some View {
        NavigationView {
            List {
                ForEach(vm.sagas.indices, id: \.self) { index in
                    Section(header: Text(vm.sagas[index].name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical, 4)
                        .background(vm.sagas[index].color)
                        .cornerRadius(8)
                    ) {
                        ForEach(vm.sagas[index].comics.indices, id: \.self) { comicIndex in
                            ComicRow(
                                comic: $vm.sagas[index].comics[comicIndex],
                                sagaColor: vm.sagas[index].color,
                                imageNamespace: imageNamespace,
                                onTap: { /* podrías abrir detalle si quieres */ },
                                onToggleOwned: {
                                    vm.toggleOwned(for: vm.sagas[index].comics[comicIndex])
                                },
                                onToggleFavorite: {
                                    vm.toggleFavorite(for: vm.sagas[index].comics[comicIndex])
                                }
                            )
                        }
                    }
                }
            }
            .navigationTitle("Color")
        }
    }
}
