//
//  ComicRow.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 20/7/25.
//

import SwiftUI

struct ComicRow: View {
    @Binding var comic: Comic
    var sagaColor: Color
    var imageNamespace: Namespace.ID
    var onTap: () -> Void
    var onToggleOwned: () -> Void
    var onToggleFavorite: (() -> Void)? = nil

    @State private var isAnimatingHeart = false
    @State private var isRadarRotating = false

    var body: some View {
        HStack(spacing: 16) {
            ZStack(alignment: .topTrailing) {
                Image(comic.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: comic.owned ? 80 : 65)
                    .cornerRadius(10)
                    .opacity(comic.owned ? 1.0 : 0.4)
                    .grayscale(comic.owned ? 0 : 1)
                    .shadow(radius: comic.owned ? 4 : 0)
                    .scaleEffect(comic.owned ? 1.0 : 0.95)
                    .matchedGeometryEffect(id: comic.id, in: imageNamespace)
                    .onTapGesture {
                        onTap()
                    }
                // Añade aquí tus otros overlays si quieres (corazón, radar, etc.)
            }
            // Resto del contenido si lo tenías (título, botones...)
        }
    }
}
