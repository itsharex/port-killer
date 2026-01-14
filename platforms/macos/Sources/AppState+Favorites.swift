import Foundation

extension AppState {
    /// Toggles favorite status for a port (delegates to FavoritesState)
    func toggleFavorite(_ port: Int) {
        favoritesState.toggle(port)
    }

    /// Checks if a port is marked as favorite (delegates to FavoritesState)
    func isFavorite(_ port: Int) -> Bool {
        favoritesState.isFavorite(port)
    }
}
