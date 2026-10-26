// Source code is private. This file shows only its types and signatures.

import SwiftUI

enum NoBetTheme {
    static let background
    static let surface
    static let surfaceRaised
    static let gold
    static let violet
    static let rose
    static let teal
    static let red
    static let textPrimary
    static let textSecondary
    static let backgroundGradient
    static let panelGradient
    static let urgeGradient
}

struct PremiumCardModifier: ViewModifier {
    func body(content: Content) -> some View { /* private */ }
}

extension View {
    func premiumCard() -> some View { /* private */ }

    func premiumField() -> some View { /* private */ }
}

struct PrimaryButtonLabel: View {
    let title: String

    var body: some View { /* private */ }
}

struct SecondaryButtonLabel: View {
    let title: String
    var systemImage: String?

    var body: some View { /* private */ }
}

struct ChipLabel: View {
    let title: String
    let systemImage: String
    let isSelected: Bool

    var body: some View { /* private */ }
}

struct ProgressRing: View {
    let progress: Double
    var lineWidth: CGFloat
    var tint: Color

    var body: some View { /* private */ }
}

struct MetricTile: View {
    let title: String
    let value: String
    let systemImage: String

    var body: some View { /* private */ }
}

struct SectionHeading: View {
    let eyebrow: String
    let title: String

    var body: some View { /* private */ }
}
