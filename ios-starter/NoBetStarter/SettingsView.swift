// Source code is private. This file shows only its types and signatures.

import SwiftUI

struct SettingsView: View {
    @Environment(RecoveryStore.self) private var store
    @Environment(\.dismiss) private var dismiss
    @State private var newReason
    @State private var reminderTime
    @State private var reminderDenied
    @State private var isResetConfirmationPresented

    private let currencyOptions

    var body: some View { /* private */ }

    private func planCard(store: RecoveryStore) -> some View { /* private */ }

    private var currencyChoices: [String] { /* private */ }

    private var reasonsCard: some View { /* private */ }

    private func trustedPersonCard(store: RecoveryStore) -> some View { /* private */ }

    private func reminderCard(store: RecoveryStore) -> some View { /* private */ }

    private func regionCard(store: RecoveryStore) -> some View { /* private */ }

    private var dataCard: some View { /* private */ }

    private func addReason() { /* private */ }

    private func scheduleReminder() { /* private */ }
}
