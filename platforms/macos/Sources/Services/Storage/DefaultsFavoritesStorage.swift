/**
 * DefaultsFavoritesStorage.swift
 * PortKiller
 *
 * UserDefaults-backed storage for favorites.
 */

import Foundation
import Defaults

/// Default implementation of FavoritesStorageProtocol using UserDefaults
struct DefaultsFavoritesStorage: FavoritesStorageProtocol {
    func load() -> Set<Int> {
        Defaults[.favorites]
    }

    func save(_ favorites: Set<Int>) {
        Defaults[.favorites] = favorites
    }
}
