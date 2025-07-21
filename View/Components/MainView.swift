//
//  MainView.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            content
                .navigationTitle("Inici")
        }
    }

    var content: some View {
        VStack(spacing: 40) {
            Spacer()

            Text("La meva col·lecció\nDragon Ball")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            NavigationLink(destination: ComicsListView()) {
                GradientButton(icon: "books.vertical", label: "Còmics")
            }

            NavigationLink(destination: FiguresView()) {
                GradientButton(icon: "cube.box.fill", label: "Figures")
            }

            Spacer()
        }
        .padding()
    }
}
