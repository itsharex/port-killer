/**
 * NotificationServiceProtocol.swift
 * PortKiller
 *
 * Protocol abstraction for system notifications.
 * Enables dependency injection and testing.
 */

import Foundation

/// Protocol for system notification operations
@MainActor
protocol NotificationServiceProtocol {
    /// Sets up the notification service
    func setup()

    /// Sends a notification to the user
    /// - Parameters:
    ///   - title: Notification title
    ///   - body: Notification body text
    func notify(title: String, body: String)

    /// Requests notification permission from the user
    /// - Returns: True if permission was granted
    func requestPermission() async -> Bool
}
