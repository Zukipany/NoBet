// Source code is private. This file shows only its types and signatures.

import SwiftUI

struct UrgeSupportSheet: View {
    @Environment(RecoveryStore.self) private var store
    @Environment(\.dismiss) private var dismiss
    @State private var selectedTool: SupportToolKind
    @State private var secondsRemaining
    @State private var timerRun
    @State private var selectedTrigger: UrgeTrigger?
    @State private var isSlipConfirmationPresented

    private var selectedSupport: SupportTool { /* private */ }

    private var timerDuration: Int { /* private */ }

    private var timerProgress: Double { /* private */ }

    private var timerText: String { /* private */ }

    var body: some View { /* private */ }

    private var header: some View { /* private */ }

    private var toolPicker: some View { /* private */ }

    @ViewBuilder
    private var supportContent: some View { /* private */ }

    private var reasonsCard: some View { /* private */ }

    private var triggerPicker: some View { /* private */ }

    private var timerCard: some View { /* private */ }

    private func guidanceCard(title: String, detail: String, prompt: String, secondaryPrompt: String) -> some View { /* private */ }

    private var actionButtons: some View { /* private */ }

    /// Counts down the selected tool's timer. SwiftUI cancels it when the tool changes,
    /// the timer restarts, or the sheet closes, so it never outlives the view.
    private func runCountdown() async { /* private */ }
}
