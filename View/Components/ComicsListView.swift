
import SwiftUI

struct ComicsListView: View {
    let sections: [ComicSection] = [
        ComicSection(title: "Color", imageName: "color", destination: AnyView(ColorComicsView()), progress: "12/32"),
        ComicSection(title: "Ultimate", imageName: "ultimate0", destination: AnyView(UltimateComicsView()), progress: "5/34"),
        ComicSection(title: "Legend", imageName: "legend", destination: AnyView(LegendComicsView()), progress: "0/22"),
        ComicSection(title: "Super", imageName: "super", destination: AnyView(SuperComicsView()), progress: "3/12"),
        ComicSection(title: "Pel·lícules", imageName: "peliculaPortada", destination: AnyView(PeliculaComicView()), progress: "1/9")
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(sections) { section in
                    NavigationLink(destination: section.destination) {
                        HStack(spacing: 16) {
                            Image(section.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 90)
                                .cornerRadius(8)

                            VStack(alignment: .leading, spacing: 6) {
                                Text(section.title)
                                    .font(.headline)
                                Text("Progress: \(section.progress)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }

                            Spacer()

                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                        .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Bola de Drac: Còmics")
        }
    }
}
