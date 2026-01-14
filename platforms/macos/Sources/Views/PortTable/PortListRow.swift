/// PortListRow - Individual port row component for table view
///
/// Thin wrapper around PortRowView with table style.
/// Maintains backward compatibility with existing usage.

import SwiftUI

struct PortListRow: View {
    let port: PortInfo

    var body: some View {
        PortRowView(port: port, style: .table)
    }
}
