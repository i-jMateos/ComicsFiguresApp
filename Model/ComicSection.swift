

import SwiftUI


struct ComicSection: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let destination: AnyView
    let progress: String
}

