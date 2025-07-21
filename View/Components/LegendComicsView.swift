
import SwiftUI

struct LegendComicsView: View {
    @StateObject private var vm = LegendComicsViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 24, pinnedViews: [.sectionHeaders]) {
                    ForEach(vm.sagas.indices, id: \.self) { index in
                        LegendSectionView(
                            saga: $vm.sagas[index],
                            onToggleOwned: { comic in
                                vm.toggleOwned(for: comic)
                            }
                        )
                    }
                }
                .padding()
            }
            .navigationTitle("Legend")
        }
    }
}
