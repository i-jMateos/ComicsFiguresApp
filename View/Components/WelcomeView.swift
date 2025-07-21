//
//  WelcomeView.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

/*
import SwiftUI

struct WelcomeView: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack {
            if isActive {
                MainView()
            } else {
                VStack(spacing: 20) {
                    Image("dragonball_logo") // Cambia por tu imagen real
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)

                    Text("Benvingut a la col·lecció de Bola de Drac")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)

                    ProgressView()
                        .progressViewStyle(.circular)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isActive = true
                        }
                    }
                }
            }
        }
    }
}
*/
import SwiftUI
import SDWebImageSwiftUI

struct WelcomeView: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack {
            if isActive {
                MainView() // 👉 Aquí va tu pantalla principal
            } else {
                VStack(spacing: 30) {
                    // 🌀 Imagen animada GIF redondeada con borde y sombra
                    AnimatedImage(name: "intro.gif")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .overlay(Circle().stroke(Color.orange, lineWidth: 3))
                                            .shadow(radius: 6)

                    // 🟠 Texto de bienvenida
                    Text("Benvingut a la col·lecció de Bola de Drac")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    // ⏳ Indicador de carga
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .orange))
                        .scaleEffect(1.5)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.orange.opacity(0.5), Color.pink.opacity(0.4)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )

                .ignoresSafeArea()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 9.0) {
                        withAnimation {
                            isActive = true
                        }
                    }
                }
            }
        }
    }
}
