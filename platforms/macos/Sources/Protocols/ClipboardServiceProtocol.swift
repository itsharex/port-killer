/**
 * ClipboardServiceProtocol.swift
 * PortKiller
 *
 * Protocol abstraction for clipboard operations.
 * Enables dependency injection and testing.
 */

import Foundation

/// Protocol for clipboard operations
protocol ClipboardServiceProtocol {
    /// Copies text to the system clipboard
    /// - Parameter text: Text to copy
    static func copy(_ text: String)
}
