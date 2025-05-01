import Foundation

public struct LocalizedDataList: Hashable, ExpressibleByDictionaryLiteral, Sendable {

    // MARK: - Typealiases for ExpressibleByDictionaryLiteral

    /// The key type for dictionary literals (the language).
    public typealias Key = Language
    /// The value type for dictionary literals (the data value struct).
    public typealias Value = LocalizedData.Value  // Now refers to the struct

    // MARK: - Core Storage

    /// The array holding the different localizations of the data.
    /// Using a Set might be better if uniqueness by localeIdentifier is desired.
    /// Using an Array allows multiple entries for the same identifier (e.g., if added manually).
    public var localizations: [LocalizedData]

    // MARK: - Initializers

    /// Initializes with a pre-existing array of `LocalizedData`.
    /// Ensures uniqueness based on `localeIdentifier`. If duplicates are provided, the last one wins.
    public init(_ data: [LocalizedData] = []) {
        // Ensure uniqueness by localeIdentifier, keeping the last occurrence
        var uniqueLocalizations = [String: LocalizedData]()
        for item in data {
            uniqueLocalizations[item.localeIdentifier] = item
        }
        self.localizations = Array(uniqueLocalizations.values)
    }

    /// Allows initialization with an array literal: `let list: LocalizedDataList = [data1, data2]`
    /// Note: This uses the array initializer, ensuring uniqueness.
    public init(arrayLiteral elements: LocalizedData...) {
        self.init(elements)
    }

    /// Allows initialization with a dictionary literal: `let list: LocalizedDataList = [.en: value1, .fr: value2]`
    /// Note: This only creates base language entries.
    public init(dictionaryLiteral elements: (Language, Value)...) {
        let data = elements.map { language, dataValue in
            // Creates LocalizedData with only language component
            LocalizedData(dataValue, language: language)
        }
        self.init(data)  // Ensures uniqueness via the array initializer
    }

    /// Initializes with a dictionary mapping languages to their data representation.
    /// Note: This only creates base language entries.
    public init(_ dictionary: [Language: Value]) {
        let data = dictionary.map { language, dataValue in
            // Creates LocalizedData with only language component
            LocalizedData(dataValue, language: language)
        }
        self.init(data)  // Ensures uniqueness via the array initializer
    }

    // MARK: - Codable Implementation (Simplified)

    /// Decodes from a dictionary format like `{"en": {"data": "...", "type": "...", "encoding": "..."}, "en-US": ...}`.
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        // Decode directly into [String: LocalizedData.Value]
        let dataMap = try container.decode([String: LocalizedData.Value].self)

        var tempLocalizations: [LocalizedData] = []
        tempLocalizations.reserveCapacity(dataMap.count)

        for (identifier, value) in dataMap {
            // Use the LocalizedData initializer that parses the identifier
            if let localizedData = LocalizedData(localeIdentifier: identifier, value: value) {
                tempLocalizations.append(localizedData)
            } else {
                // Handle cases where the locale identifier in the JSON isn't valid
                // according to LocalizedData's init rules (e.g., unknown lang, script present)
                print(
                    "⚠️ Warning: Invalid or unsupported locale identifier '\(identifier)' found during decoding LocalizedDataList. Skipping."
                )
                // Consider throwing an error if strictness is required:
                // throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid locale identifier '\(identifier)'")
            }
        }
        // No need for explicit uniqueness check here, as dictionary keys are unique.
        self.localizations = tempLocalizations
    }

    /// Encodes to a dictionary format like `{"en": {"data": "...", "type": "...", "encoding": "..."}, "en-US": ...}`.
    public func encode(to encoder: Encoder) throws {
        // Create the dictionary [localeIdentifier: Value] directly
        let dataMap = localizations.reduce(into: [String: LocalizedData.Value]()) {
            result, localizedData in
            // Use the full localeIdentifier as the key
            result[localizedData.localeIdentifier] = localizedData.value
        }

        var container = encoder.singleValueContainer()
        try container.encode(dataMap)
    }

    // MARK: - Convenience Accessors

    /// Accesses the data value struct for a specific language (base language only).
    /// Allows getting, setting, or removing the data for a base language.
    /// Note: This operates only on base language matches (e.g., `.en`), ignoring regions.
    public subscript(language: Language) -> Value? {
        get {
            // Find the first localization matching the base language.
            localizations.first { $0.language == language && $0.region == nil }?.value
        }
        set {
            let identifier = language.rawValue  // Identifier for base language
            // Find the index of the existing base language localization
            if let index = localizations.firstIndex(where: { $0.localeIdentifier == identifier }) {
                // If newValue is nil, remove the existing localization
                guard let newValue = newValue else {
                    localizations.remove(at: index)
                    return
                }
                // Otherwise, replace the existing localization
                // Use the init that takes language directly
                if let updatedData = LocalizedData(language: language, region: nil, value: newValue)
                {
                    localizations[index] = updatedData
                } else {
                    // Should not happen if language is valid, but handle defensively
                    print(
                        "⚠️ Warning: Failed to create LocalizedData for \(identifier) during subscript set."
                    )
                    localizations.remove(at: index)  // Remove inconsistent entry
                }

            } else if let newValue = newValue {
                // If no existing localization was found and newValue is not nil,
                // append a new base language localization
                if let newData = LocalizedData(language: language, region: nil, value: newValue) {
                    localizations.append(newData)
                } else {
                    print(
                        "⚠️ Warning: Failed to create LocalizedData for \(identifier) during subscript set."
                    )
                }
            }
            // If no existing localization was found and newValue is nil, do nothing
        }
    }

    /// Accesses the data value struct for a specific locale identifier string.
    /// Allows getting, setting, or removing the data for an exact locale identifier.
    public subscript(localeIdentifier identifier: String) -> Value? {
        get {
            localizations.first { $0.localeIdentifier == identifier }?.value
        }
        set {
            if let index = localizations.firstIndex(where: { $0.localeIdentifier == identifier }) {
                guard let newValue = newValue else {
                    localizations.remove(at: index)
                    return
                }
                // Replace existing: Need to re-create LocalizedData to ensure consistency
                if let updatedData = LocalizedData(localeIdentifier: identifier, value: newValue) {
                    localizations[index] = updatedData
                } else {
                    // Identifier became invalid? Remove the old one.
                    print(
                        "⚠️ Warning: Locale identifier '\(identifier)' became invalid during subscript set. Removing entry."
                    )
                    localizations.remove(at: index)
                }
            } else if let newValue = newValue {
                // Add new: Use the parsing initializer
                if let newData = LocalizedData(localeIdentifier: identifier, value: newValue) {
                    localizations.append(newData)
                } else {
                    // Don't add if the identifier is invalid according to LocalizedData rules
                    print(
                        "⚠️ Warning: Invalid locale identifier '\(identifier)' provided to subscript set. Ignoring."
                    )
                }
            }
        }
    }

    // MARK: - Localization Selection

    /// Returns the data value struct (`Value`) that best matches the device's current locale,
    /// falling back according to a defined priority.
    ///
    /// Priority:
    /// 1. Exact locale identifier match (e.g., "en-US")
    /// 2. Language only match (e.g., "en")
    /// 3. Default language exact match (from `Localizer.default`, e.g., "fr-CA")
    /// 4. Default language only match
    ///
    /// - Returns: The best matching `LocalizedData.Value` struct, or `nil` if no suitable localization is found.
    public func dataForCurrentDeviceLocale() -> Value? {
        return dataForLocale(Locale.current, defaultLang: Localizer.default)
    }

    /// Helper function for locale matching logic.
    private func dataForLocale(_ targetLocale: Locale, defaultLang: Language?) -> Value? {
        // Use BCP 47 identifiers (hyphens) for matching
        let targetIdentifier = targetLocale.identifier.replacingOccurrences(of: "_", with: "-")  // e.g., "en-US", "zh-Hans-CN"
        let targetLangCode = targetLocale.languageCode  // e.g., "en", "zh" (already BCP 47)

        // Prepare default identifiers if defaultLang is provided
        let defaultIdentifier = defaultLang?.rawValue  // Assumes Language rawValue is BCP 47 base code
        let defaultLangCode = defaultIdentifier  // For language-only match

        // --- Find best match ---
        // Use dictionaries for quick lookups
        let lookup = Dictionary(
            uniqueKeysWithValues: localizations.map { ($0.localeIdentifier, $0.value) })

        // Priority 1: Exact full identifier match (e.g., "en-US")
        if let value = lookup[targetIdentifier] {
            return value
        }

        // Priority 2: Language code only match (e.g., "en")
        if let langCode = targetLangCode, let value = lookup[langCode] {
            return value
        }

        // --- Check Default Fallbacks ---
        if let defaultId = defaultIdentifier {
            // Priority 3: Default exact match (e.g., "fr-CA" if default is fr-CA)
            // Note: Our current LocalizedData only stores lang or lang-region.
            // If Localizer.default represents "fr-CA", this check might not match
            // unless an explicit "fr-CA" entry exists in localizations.
            // Let's assume defaultIdentifier is just the language code for now based on Language enum.
            if let value = lookup[defaultId] {  // Check for exact default identifier (likely just lang code)
                return value
            }

            // Priority 4: Default Language code only match (redundant if defaultIdentifier is just lang code)
            // If defaultIdentifier could be "fr-CA", this check makes sense.
            if let defLangCode = defaultLangCode, defaultId != defLangCode,
                let value = lookup[defLangCode]
            {
                return value
            }
        }

        // Final fallback: return nil if nothing matched
        return nil
    }

    /// A Boolean value indicating whether the collection is empty.
    public var isEmpty: Bool {
        localizations.isEmpty
    }
}
