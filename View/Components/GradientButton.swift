//
//  GradientButton.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 20/7/25.
//

import SwiftUI

struct GradientButton: View {
    var icon: String
    var label: String
    var gradient: LinearGradient = LinearGradient(
        colors: [Color.orange, Color.red],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title2)
            Text(label)
                .font(.headline)
        }
        .foregroundColor(.white)
        .padding()
        .frame(maxWidth: .infinity)
        .background(gradient)
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}
