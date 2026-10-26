// Source code is private. This file shows only its types and signatures.

import SwiftUI

struct ProtectView: View {
    @Environment(RecoveryStore.self) private var store
    @State private var selectedStep: ProtectionStep?

    var body: some View { /* private */ }

    private var shieldCard: some View { /* private */ }

    private var shieldMessage: String { /* private */ }

    private func stepRow(_ step: ProtectionStep) -> some View { /* private */ }
}

struct ProtectionStepDetailView: View {
    @Environment(RecoveryStore.self) private var store
    @Environment(\.dismiss) private var dismiss
    let step: ProtectionStep

    private var isComplete: Bool { /* private */ }

    var body: some View { /* private */ }

    private var stepsCard: some View { /* private */ }
}
