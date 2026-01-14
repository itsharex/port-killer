/**
 * TunnelState.swift
 * PortKiller
 *
 * Pure UI state for Cloudflare tunnels.
 * Extracted from TunnelManager for separation of concerns.
 */

import Foundation

/// Observable state for Cloudflare tunnels
@Observable
@MainActor
final class TunnelState {
    /// Active tunnel states
    var tunnels: [CloudflareTunnelState] = []

    /// Cached installation status
    private(set) var isCloudflaredInstalled: Bool = false

    /// Number of currently active tunnels
    var activeTunnelCount: Int {
        tunnels.filter { $0.status == .active }.count
    }

    /// Update installation status
    func setInstalled(_ installed: Bool) {
        isCloudflaredInstalled = installed
    }

    /// Add a new tunnel state
    func addTunnel(_ tunnel: CloudflareTunnelState) {
        tunnels.append(tunnel)
    }

    /// Remove tunnel by ID
    func removeTunnel(id: UUID) {
        tunnels.removeAll { $0.id == id }
    }

    /// Remove all tunnels
    func removeAllTunnels() {
        tunnels.removeAll()
    }

    /// Get tunnel for a specific port
    func tunnel(for port: Int) -> CloudflareTunnelState? {
        tunnels.first { $0.port == port }
    }

    /// Check if port has a non-error tunnel
    func hasTunnel(for port: Int) -> Bool {
        tunnels.contains { $0.port == port && $0.status != .error }
    }
}
