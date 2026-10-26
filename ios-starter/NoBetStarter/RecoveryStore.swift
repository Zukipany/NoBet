// Source code is private. This file shows only its types and signatures.

import Foundation
import Observation

@MainActor
@Observable
final class RecoveryStore {
    var hasCompletedOnboarding
    var profile
    var totalXP
    var urgesResisted
    var interventionsUsed
    var bankedCleanDays
    var longestStreakDays
    var slipDates: [Date]
    var missions
    var recentEmotions: [EmotionLog]
    var urgeJournal: [UrgeEntry]
    var completedProtectionSteps: Set<String>
    var trustedContact
    var reminder
    var region
    private(set) var today
    let realityChecks
    let recoveryMethods
    let supportTools
    let protectionSteps

    private var missionDay
    private var rewardedProtectionSteps: Set<String>
    private var lastCheckInDay: Date?

    private let defaults: UserDefaults?
    private static let storageKey
    private let levelStepXP

    init(defaults: UserDefaults? = .standard) { /* private */ }

    var level: Int { /* private */ }

    var levelProgress: Double { /* private */ }

    var streakDays: Int { /* private */ }

    var bestStreakDays: Int { /* private */ }

    var totalCleanDays: Int { /* private */ }

    var moneySaved: Double { /* private */ }

    var currencyCode: String { /* private */ }

    var nextMilestone: Milestone? { /* private */ }

    var todaysCompletionCount: Int { /* private */ }

    var completionRate: Double { /* private */ }

    var nextMission: Mission? { /* private */ }

    var weeklyEmotionSnapshot: [EmotionLog] { /* private */ }

    var hasCheckedInToday: Bool { /* private */ }

    var protectionProgress: Double { /* private */ }

    var completedProtectionCount: Int { /* private */ }

    var nextProtectionStep: ProtectionStep? { /* private */ }

    var sortedJournal: [UrgeEntry] { /* private */ }

    var topTriggers: [(trigger: UrgeTrigger, count: Int)] { /* private */ }

    func refreshForToday() { /* private */ }

    func completeOnboarding(weeklySpend: Double, quitDate: Date, reason: String) { /* private */ }

    func completeMission(id: String) { /* private */ }

    func logEmotion(_ emotion: EmotionState) { /* private */ }

    func recordUrgeWin(using kind: SupportToolKind, trigger: UrgeTrigger?) { /* private */ }

    func logUrge(trigger: UrgeTrigger, intensity: Int, outcome: UrgeOutcome, note: String) { /* private */ }

    /// A slip restarts the streak but keeps every clean day already earned.
    func recordSlip(trigger: UrgeTrigger? = nil) { /* private */ }

    func deleteJournalEntry(id: UUID) { /* private */ }

    func setProtectionStep(_ id: String, isComplete: Bool) { /* private */ }

    func addReason(_ reason: String) { /* private */ }

    func removeReason(_ reason: String) { /* private */ }

    func resetAllProgress() { /* private */ }

    // MARK: - Persistence

    private struct Snapshot: Codable {
        var hasCompletedOnboarding
        var profile
        var totalXP
        var urgesResisted
        var interventionsUsed
        var bankedCleanDays
        var longestStreakDays
        var slipDates: [Date]
        var missionDay
        var completedMissionIDs: Set<String>
        var recentEmotions: [EmotionLog]
        var urgeJournal: [UrgeEntry]
        var completedProtectionSteps: Set<String>
        var rewardedProtectionSteps: Set<String>
        var trustedContact
        var reminder
        var region: SupportRegion?
        var lastCheckInDay: Date?

        init() { /* private */ }

        init(from decoder: Decoder) throws { /* private */ }
    }

    func save() { /* private */ }

    private func load() { /* private */ }

    private func apply(_ snapshot: Snapshot) { /* private */ }
}

extension RecoveryStore {
    /// In-memory store with sample data for SwiftUI previews.
    static var preview: RecoveryStore { /* private */ }
}
