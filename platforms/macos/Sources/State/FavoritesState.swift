/**
 * FavoritesState.swift
 * PortKiller
 *
 * Manages favorite ports state with persistence.
 * Extracted from AppState for single responsibility.
 */

import Foundation

/// Manages favorite ports
@Observable
@MainActor
final class FavoritesState {
    /// Storage backend for persistence
    private let storage: FavoritesStorageProtocol

    /// Cached favorites, synced with storage on change
    private var _favorites: Set<Int> {
        didSet {
            storage.save(_favorites)
        }
    }

    /// Port numbers marked as favorites
    var favorites: Set<Int> {
        get { _favorites }
        set { _favorites = newValue }
    }

    /// Initialize with storage backend
    /// - Parameter storage: Storage implementation (defaults to UserDefaults)
    init(storage: FavoritesStorageProtocol = DefaultsFavoritesStorage()) {
        self.storage = storage
        self._favorites = storage.load()
    }

    /// Toggles favorite status for a port
    /// - Parameter port: Port number to toggle
    func toggle(_ port: Int) {
        if _favorites.contains(port) {
            _favorites.remove(port)
        } else {
            _favorites.insert(port)
        }
    }

    /// Checks if a port is marked as favorite
    /// - Parameter port: Port number to check
    /// - Returns: True if the port is a favorite
    func isFavorite(_ port: Int) -> Bool {
        _favorites.contains(port)
    }
}
