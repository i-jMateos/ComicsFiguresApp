//
//  OwnedStorageService.swift
//  ComicsFiguresApp
//
//  Created by Jordi on 18/7/25.
//
import Foundation

class OwnedStorageService {
    private let key = "ownedComics"

    func loadOwned() -> Set<String> {
        let ids = UserDefaults.standard.array(forKey: key) as? [String] ?? []
        return Set(ids)
    }

    func saveOwned(_ ownedIDs: Set<String>) {
        UserDefaults.standard.set(Array(ownedIDs), forKey: key)
    }

    func toggleOwned(for comicID: String) {
        var owned = loadOwned()
        if owned.contains(comicID) {
            owned.remove(comicID)
        } else {
            owned.insert(comicID)
        }
        saveOwned(owned)
    }

    func isOwned(_ comicID: String) -> Bool {
        return loadOwned().contains(comicID)
    }
}

