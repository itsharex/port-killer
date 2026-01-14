/// MenuBarNestedPortRow - Minimal nested port row for menu bar
///
/// Thin wrapper around PortRowView with menuBarNested style.
/// Injects AppState into environment for PortRowView.

import SwiftUI

struct MenuBarNestedPortRow: View {
    let port: PortInfo
    @Bindable var state: AppState

    var body: some View {
        PortRowView(port: port, style: .menuBarNested)
            .environment(state)
    }
}
