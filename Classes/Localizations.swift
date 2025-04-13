import Foundation

public typealias Localizations = [LocalizedString]

public extension Localizations {
    func localization(for language: Language) -> LocalizedString? {
        return self.first(where: { $0.language == language })
    }

    func string(for language: Language) -> String? {
        return localization(for: language)?.string
    }
}

