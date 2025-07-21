
import SwiftUI

final class FavoriteStorageService {
    private let key = "favoriteComics"

    func toggleFavorite(for id: String) {
        var favorites = loadFavorites()
        
        if favorites.contains(id) {
            favorites.removeAll { $0 == id }
        } else {
            favorites.append(id)
        }
        
        save(favorites)
    }

    func isFavorite(_ id: String) -> Bool {
        loadFavorites().contains(id)
    }

    func loadFavorites() -> [String] {
        UserDefaults.standard.stringArray(forKey: key) ?? []
    }

    func save(_ favorite: [String]) {
        UserDefaults.standard.set(favorite, forKey: key)  // ✅ esta línea corregida
    }
}
