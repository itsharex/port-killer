/**
 * DefaultsPortForwardStorage.swift
 * PortKiller
 *
 * UserDefaults-backed storage for port forward connections.
 */

import Foundation
import Defaults

/// Default implementation of PortForwardStorageProtocol using UserDefaults
struct DefaultsPortForwardStorage: PortForwardStorageProtocol {
    func load() -> [PortForwardConnectionConfig] {
        Defaults[.portForwardConnections]
    }

    func save(_ connections: [PortForwardConnectionConfig]) {
        Defaults[.portForwardConnections] = connections
    }
}
