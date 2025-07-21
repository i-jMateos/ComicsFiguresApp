
import SwiftUI
struct ComicSearchView: View {
    @ObservedObject var viewModel: SearchViewModel

    var body: some View {
        NavigationView {
            VStack {
                TextField("Busca un volum o saga...", text: $viewModel.query)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .onChange(of: viewModel.query) { _ in
                        // Esto se llamará desde fuera pasando las colecciones
                    }

                List(viewModel.results) { result in
                    VStack(alignment: .leading) {
                        Text(result.title)
                            .font(.headline)
                        Text("Saga: \(result.saga) — Col·lecció: \(result.collection)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Cerca")
        }
    }
}
