/**
 * StorageProtocols.swift
 * PortKiller
 *
 * Protocol abstractions for persistent storage.
 * Enables dependency injection and testing.
 */

import Foundation

/// Protocol for favorites storage
protocol FavoritesStorageProtocol: Sendable {
    /// Loads favorites from storage
    /// - Returns: Set of favorite port numbers
    func load() -> Set<Int>

    /// Saves favorites to storage
    /// - Parameter favorites: Set of favorite port numbers to save
    func save(_ favorites: Set<Int>)
}

/// Protocol for watched ports storage
protocol WatchedPortsStorageProtocol: Sendable {
    /// Loads watched ports from storage
    /// - Returns: Array of watched port configurations
    func load() -> [WatchedPort]

    /// Saves watched ports to storage
    /// - Parameter watchedPorts: Array of watched port configurations to save
    func save(_ watchedPorts: [WatchedPort])
}

/// Protocol for port forward connections storage
protocol PortForwardStorageProtocol: Sendable {
    /// Loads port forward connection configs from storage
    /// - Returns: Array of port forward connection configurations
    func load() -> [PortForwardConnectionConfig]

    /// Saves port forward connection configs to storage
    /// - Parameter connections: Array of configurations to save
    func save(_ connections: [PortForwardConnectionConfig])
}
