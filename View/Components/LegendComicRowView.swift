//
//  LegendComicRow.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 20/7/25.
//

import SwiftUI

struct LegendComicRowView: View {
    @Binding var comic: Comic
    var sagaColor: Color
    var onToggleOwned: () -> Void

    var body: some View {
        HStack {
            Text(comic.title)
                .foregroundColor(.white)
            Spacer()
            Button(action: onToggleOwned) {
                Image(systemName: comic.owned ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(sagaColor)
        .cornerRadius(8)
    }
}
