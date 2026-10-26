// Source code is private. This file shows only its types and signatures.

import SwiftUI

struct HomeView: View {
    @Environment(RecoveryStore.self) private var store
    @State private var isUrgeSheetPresented
    @State private var isSettingsPresented
    @State private var protectionStep: ProtectionStep?

    var body: some View { /* private */ }

    private var recoveryHero: some View { /* private */ }

    private var urgeButton: some View { /* private */ }

    private func missionFocusCard(_ mission: Mission) -> some View { /* private */ }

    private func protectionNudge(_ step: ProtectionStep) -> some View { /* private */ }

    private var emotionCheckIn: some View { /* private */ }
}
