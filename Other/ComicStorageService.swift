//
//  ComicStorageService.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//

import Foundation

class ComicStorageService {
    private let key = "ownedComicIDs"
    
    func saveOwnedComics(_ ids: [Int]) {
        UserDefaults.standard.set(ids, forKey: key)
    }

    func loadOwnedComics() -> [Int] {
        UserDefaults.standard.array(forKey: key) as? [Int] ?? []
    }

    func toggleComicOwnership(id: Int) {
        var current = loadOwnedComics()
        if current.contains(id) {
            current.removeAll { $0 == id }
        } else {
            current.append(id)
        }
        saveOwnedComics(current)
    }

    func isOwned(id: Int) -> Bool {
        loadOwnedComics().contains(id)
    }
}
