// Source code is private. This file shows only its types and signatures.

import SwiftUI

struct OnboardingFlowView: View {
    @Environment(RecoveryStore.self) private var store
    @State private var currentPage
    @State private var weeklySpend: Double?
    @State private var quitDate
    @State private var reason
    @FocusState private var isInputFocused: Bool

    private var totalPages: Int { /* private */ }

    var body: some View { /* private */ }

    private var welcomeScreen: some View { /* private */ }

    private func realityScreen(_ card: RealityCheckCard) -> some View { /* private */ }

    private var methodsScreen: some View { /* private */ }

    private var planScreen: some View { /* private */ }

    private func featureBullet(_ text: String, systemImage: String) -> some View { /* private */ }

    private func advance() { /* private */ }
}
