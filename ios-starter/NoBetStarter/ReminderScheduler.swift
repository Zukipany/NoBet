// Source code is private. This file shows only its types and signatures.

import Foundation
import UserNotifications

enum ReminderScheduler {
    private static let identifier

    /// Replaces any pending daily reminder. Returns false if notifications are not allowed.
    @discardableResult
    static func apply(_ settings: ReminderSettings) async -> Bool { /* private */ }
}
