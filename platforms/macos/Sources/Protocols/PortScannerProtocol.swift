/**
 * PortScannerProtocol.swift
 * PortKiller
 *
 * Protocol abstraction for port scanning operations.
 * Enables dependency injection and testing.
 */

import Foundation

/// Protocol for port scanning and process management operations
protocol PortScannerProtocol: Sendable {
    /// Scans for all listening TCP ports on the system
    /// - Returns: Array of PortInfo representing active ports
    func scanPorts() async -> [PortInfo]

    /// Kills a process by PID
    /// - Parameters:
    ///   - pid: Process ID to kill
    ///   - force: If true, uses SIGKILL; otherwise uses SIGTERM
    /// - Returns: True if the process was successfully killed
    func killProcess(pid: Int, force: Bool) async -> Bool

    /// Kills a process gracefully with fallback to force kill
    /// - Parameter pid: Process ID to kill
    /// - Returns: True if the process was successfully killed
    func killProcessGracefully(pid: Int) async -> Bool
}
