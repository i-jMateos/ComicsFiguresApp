
import SwiftUI

struct ComicDetailView: View {
    let comic: Comic
    let namespace: Namespace.ID
    let closeDetail: () -> Void
    @Environment(\.openURL) var openURL

    var body: some View {
        ZStack {
            Color.black.opacity(0.5)
                .ignoresSafeArea()
                .onTapGesture {
                    closeDetail()
                }

            VStack(spacing: 20) {
                Image(comic.imageName)
                    .resizable()
                    .scaledToFit()
                    .matchedGeometryEffect(id: comic.id, in: namespace)
                    .frame(maxHeight: 350)
                    .cornerRadius(16)
                    .shadow(radius: 20)

                Text(comic.title)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)

                Button(action: {
                    let query = "Comprar \(comic.title) Bola de Drac"
                    if let url = URL(string: "https://www.google.com/search?q=\(query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")") {
                        openURL(url)
                    }
                }) {
                    Label("Buscar per comprar", systemImage: "cart")
                        .font(.headline)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(10)
                }

                Button("Tancar") {
                    closeDetail()
                }
                .foregroundColor(.white.opacity(0.9))
                .padding(.top, 10)
            }
            .padding()
            .transition(.opacity)
        }
    }
}
