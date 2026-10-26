// Source code is private. This file shows only its types and signatures.

import SwiftUI

/// Trusted person plus region-aware helplines. Used in Urge Support and the Help screen.
struct SupportContactsSection: View {
    @Environment(RecoveryStore.self) private var store
    var showsCrisisLines

    private var helplines: [Helpline] { /* private */ }

    var body: some View { /* private */ }

    @ViewBuilder
    private var trustedContactCard: some View { /* private */ }

    private func helplineCard(_ line: Helpline) -> some View { /* private */ }
}

struct SupportContactsView: View {
    var body: some View { /* private */ }
}
