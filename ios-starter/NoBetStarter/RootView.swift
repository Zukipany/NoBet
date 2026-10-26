// Source code is private. This file shows only its types and signatures.

import SwiftUI

private enum AppTab: String, CaseIterable, Identifiable {
    case home
    case missions
    case protect
    case progress

    var id: String { /* private */ }

    var systemImage: String { /* private */ }
}

struct RootView: View {
    @Environment(RecoveryStore.self) private var store
    @State private var selectedTab: AppTab

    var body: some View { /* private */ }
}
