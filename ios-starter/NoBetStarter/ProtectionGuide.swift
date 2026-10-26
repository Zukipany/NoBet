// Source code is private. This file shows only its types and signatures.

import Foundation
import SwiftUI

enum SupportRegion: String, CaseIterable, Identifiable, Codable {
    case unitedStates
    case unitedKingdom
    case bulgaria
    case europe
    case international

    var id: String { /* private */ }

    static var current: SupportRegion { /* private */ }

    var emergencyNumber: String { /* private */ }
}

struct GuideLink: Identifiable, Hashable {
    let title: String
    let url: URL

    var id: URL { /* private */ }

    init(_ title: String, _ urlString: String) { /* private */ }
}

struct Helpline: Identifiable, Hashable {
    let id: String
    var name: String
    var detail: String
    var phoneDisplay: String?
    var phoneDial: String?
    var link: GuideLink?
    var isCrisisLine

    var callURL: URL? { /* private */ }
}

extension Helpline {
    static func directory(for region: SupportRegion) -> [Helpline] { /* private */ }
}

enum ProtectionLayer: String, CaseIterable, Identifiable {
    case device
    case network
    case money
    case accounts
    case people

    var id: String { /* private */ }

    var headline: String { /* private */ }

    var iconName: String { /* private */ }

    var tint: Color { /* private */ }
}

struct ProtectionStep: Identifiable, Hashable {
    let id: String
    var layer: ProtectionLayer
    var title: String
    var summary: String
    var minutes: Int
    var rewardXP: Int
    var steps: [String]
    var regionalSteps: [SupportRegion: [String]]
    var links: [GuideLink]
    var regionalLinks: [SupportRegion: [GuideLink]]
    var tip: String?

    func steps(for region: SupportRegion) -> [String] { /* private */ }

    func links(for region: SupportRegion) -> [GuideLink] { /* private */ }
}

extension ProtectionStep {
    static let guide: [ProtectionStep]
}
