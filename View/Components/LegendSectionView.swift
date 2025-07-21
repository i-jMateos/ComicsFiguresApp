import SwiftUI


struct LegendSectionView: View {
    @Binding var saga: Saga
    var onToggleOwned: (Comic) -> Void

    var body: some View {
        Section(header: headerView) {
            ForEach($saga.comics) { $comic in
                LegendComicRowView(
                    comic: $comic,
                    sagaColor: saga.color,
                    onToggleOwned: {
                        onToggleOwned(comic)
                    }
                )
            }
        }
    }

    private var headerView: some View {
        HStack {
            Text(saga.name)
                .font(.title3).bold().foregroundColor(.white)
            Spacer()
            Text(saga.progressText)
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.85))
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
        .background(saga.color)
        .cornerRadius(8)
    }
}

