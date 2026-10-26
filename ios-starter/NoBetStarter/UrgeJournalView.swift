// Source code is private. This file shows only its types and signatures.

import SwiftUI

struct UrgeJournalView: View {
    @Environment(RecoveryStore.self) private var store
    @State private var isLogSheetPresented

    var body: some View { /* private */ }

    private var emptyState: some View { /* private */ }
}

struct UrgeEntryRow: View {
    let entry: UrgeEntry

    var body: some View { /* private */ }
}

private struct IntensityDots: View {
    let value: Int

    var body: some View { /* private */ }
}

struct UrgeLogSheet: View {
    @Environment(RecoveryStore.self) private var store
    @Environment(\.dismiss) private var dismiss
    @State private var trigger: UrgeTrigger
    @State private var intensity
    @State private var outcome: UrgeOutcome
    @State private var note

    var body: some View { /* private */ }
}

/// Wrapping row of selectable trigger chips.
struct FlowChips: View {
    let items: [UrgeTrigger]
    @Binding var selection: UrgeTrigger

    var body: some View { /* private */ }
}
