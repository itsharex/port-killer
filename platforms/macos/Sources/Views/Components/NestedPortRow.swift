/// NestedPortListRow - Individual port row within expanded process group
///
/// Thin wrapper around PortRowView with nested style.
/// Maintains backward compatibility with existing usage.

import SwiftUI

struct NestedPortListRow: View {
    let port: PortInfo

    var body: some View {
        PortRowView(port: port, style: .nested)
    }
}
