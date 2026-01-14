import Foundation

extension AppState {
    /// Toggles watch status for a port (delegates to WatchedPortsState)
    func toggleWatch(_ port: Int) {
        watchedPortsState.toggle(port)
    }

    /// Checks if a port is being watched (delegates to WatchedPortsState)
    func isWatching(_ port: Int) -> Bool {
        watchedPortsState.isWatching(port)
    }

    /// Updates notification preferences for a watched port (delegates to WatchedPortsState)
    func updateWatch(_ port: Int, onStart: Bool, onStop: Bool) {
        watchedPortsState.updateWatch(port, onStart: onStart, onStop: onStop)
    }

    /// Removes a watched port by its ID (delegates to WatchedPortsState)
    func removeWatch(_ id: UUID) {
        watchedPortsState.removeWatch(id)
    }

    /// Checks watched ports for state changes and triggers notifications
    func checkWatchedPorts() {
        watchedPortsState.checkForChanges(ports: ports)
    }
}
