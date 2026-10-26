// Source code is private. This file shows only its types and signatures.

import Foundation
import SwiftUI

enum MissionCategory: String, CaseIterable, Identifiable {
    case urgeDelay
    case triggerScan
    case replacement
    case reflection

    var id: String { /* private */ }

    var iconName: String { /* private */ }

    var tint: Color { /* private */ }
}

struct Mission: Identifiable, Hashable {
    let id: String
    var title: String
    var detail: String
    var durationMinutes: Int
    var rewardXP: Int
    var category: MissionCategory
    var isComplete: Bool
}

enum EmotionState: String, CaseIterable, Identifiable, Codable {
    case steady
    case hopeful
    case restless
    case stressed
    case triggered

    var id: String { /* private */ }

    var iconName: String { /* private */ }

    var tint: Color { /* private */ }

    var intensity: Int { /* private */ }
}

struct EmotionLog: Identifiable, Hashable, Codable {
    let id: UUID
    let date: Date
    let emotion: EmotionState
}

enum UrgeTrigger: String, CaseIterable, Identifiable, Codable {
    case boredom
    case stress
    case loneliness
    case payday
    case sportsAndAds
    case alcohol
    case chasingLosses
    case celebrating
    case other

    var id: String { /* private */ }

    var iconName: String { /* private */ }
}

enum UrgeOutcome: String, CaseIterable, Identifiable, Codable {
    case resisted
    case slipped

    var id: String { /* private */ }

    var tint: Color { /* private */ }
}

struct UrgeEntry: Identifiable, Hashable, Codable {
    /// Intensity value for quick logs where the user did not rate the urge.
    static let unrated

    let id: UUID
    let date: Date
    var trigger: UrgeTrigger
    var intensity: Int
    var outcome: UrgeOutcome
    var note: String
}

struct RecoveryProfile: Hashable, Codable {
    var quitDate: Date
    var weeklySpend: Double
    var currencyCode: String
    var reasons: [String]
}

struct TrustedContact: Hashable, Codable {
    var name
    var phone

    var isSet: Bool { /* private */ }

    var dialableNumber: String? { /* private */ }
}

struct ReminderSettings: Hashable, Codable {
    var isEnabled
    var hour
    var minute
}

struct Milestone: Identifiable, Hashable {
    let days: Int
    let title: String
    let systemImage: String

    var id: Int { /* private */ }

    static let ladder: [Milestone]
}

struct RealityCheckCard: Identifiable, Hashable {
    let id: UUID
    var eyebrow: String
    var headline: String
    var supportingText: String
    var systemImage: String
}

struct RecoveryMethod: Identifiable, Hashable {
    let id: UUID
    var title: String
    var detail: String
    var systemImage: String
}

enum SupportToolKind: String, CaseIterable, Identifiable {
    case breathe
    case delay
    case distract
    case ground
    case remind
    case reachOut

    var id: String { /* private */ }

    var timerSeconds: Int? { /* private */ }

    var iconName: String { /* private */ }
}

struct SupportTool: Identifiable, Hashable {
    var kind: SupportToolKind
    var title: String
    var detail: String
    var prompt: String
    var secondaryPrompt: String

    var id: SupportToolKind { /* private */ }
}

extension Mission {
    static let alphaSet: [Mission]
}

extension RealityCheckCard {
    static let alphaSet: [RealityCheckCard]
}

extension RecoveryMethod {
    static let alphaSet: [RecoveryMethod]
}

extension SupportTool {
    static let alphaSet: [SupportTool]
}

extension EmotionLog {
    static let sampleWeek: [EmotionLog]
}
