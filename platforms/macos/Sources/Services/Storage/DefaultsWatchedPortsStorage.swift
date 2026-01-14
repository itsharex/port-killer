/**
 * DefaultsWatchedPortsStorage.swift
 * PortKiller
 *
 * UserDefaults-backed storage for watched ports.
 */

import Foundation
import Defaults

/// Default implementation of WatchedPortsStorageProtocol using UserDefaults
struct DefaultsWatchedPortsStorage: WatchedPortsStorageProtocol {
    func load() -> [WatchedPort] {
        Defaults[.watchedPorts]
    }

    func save(_ watchedPorts: [WatchedPort]) {
        Defaults[.watchedPorts] = watchedPorts
    }
}
