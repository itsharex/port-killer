/**
 * ProcessType+Color.swift
 * PortKiller
 *
 * Provides color representation for process types in the UI.
 */

import SwiftUI

extension ProcessType {
    /// Color associated with this process type for UI display
    var color: Color {
        switch self {
        case .webServer: return .blue
        case .database: return .purple
        case .development: return .orange
        case .system: return .gray
        case .other: return .secondary
        }
    }
}
