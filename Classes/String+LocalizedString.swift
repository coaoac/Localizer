import Foundation

// Only this initializer should be public
public extension String {
    /// Initializes a string by selecting the best match from the provided `LocalizedStrings`
    /// based on the current device locale and the default fallback language.
    ///
    /// - Parameter localizedStrings: The `LocalizedStrings` instance containing multiple localizations.
    init(_ localizedStrings: LocalizedStrings) {
        // Use the logic already built into LocalizedStrings
        if let selectedString = localizedStrings.stringForCurrentDeviceLocale() {
            self.init(selectedString)
        } else {
            // Fallback if no suitable string is found
            self.init("???") // Or self.init("") if preferred
            let localeIdentifier = Locale.current.identifier
            let defaultLang = Localizer.default.rawValue
            // Avoid printing the entire potentially large localizations array
            let availableLangs = localizedStrings.localizations.map { $0.language.rawValue }.joined(separator: ", ")
            print("⚠️ String(LocalizedStrings): ❌ Could not find suitable localization for locale '\(localeIdentifier)' or default '\(defaultLang)'. Available: [\(availableLangs)]. Using fallback.")
        }
    }
}

// Keep other initializers internal for use within the module if needed,
// or remove them if they are no longer necessary.
internal extension String {

    // Make properties private if only used within this extension
    private var localePrefix: String {
        // Assuming locale identifier format like "en_US" or "en"
        return self.components(separatedBy: "_").first ?? self
    }

    // Internal initializer taking variadic LocalizedString
    init (_ ls: LocalizedString...) {
        // Ensure the array version is called if needed, passing Localizer.shared
        self.init(for: Localizer.shared, Array(ls))
    }

    // Internal initializer taking Localizable and variadic LocalizedString
    init <L: Localizable>(for localizable: L, _ ls: LocalizedString...) {
        // Ensure the array version is called
        self.init(for: localizable, Array(ls))
    }

    // Internal initializer taking array of LocalizedString (uses Localizer.shared)
    init (_ ls: [LocalizedString]) {
        self.init(for: Localizer.shared, ls)
    }

    // Internal initializer with the core selection logic (kept internal)
    // This version takes a Localizable object to get the locale.
    init <L: Localizable>(for localizable: L, _ ls: [LocalizedString]) {
        guard !ls.isEmpty else {
            self.init("")
            print("⚠️ String(for: []): ❌ EMPTY STRING array provided.")
            return
        }

        // Determine target locale and prefix
        let targetLocaleIdentifier = localizable.locale ?? Locale.current.identifier // Fallback to current locale if Localizable provides nil
        let targetLocalePrefix = targetLocaleIdentifier.localePrefix
        let defaultLanguage = Localizer.default

        // --- Selection Logic --- (Similar to LocalizedStrings.stringForCurrentDeviceLocale)
        var prefixMatch: LocalizedString? = nil
        var defaultMatch: LocalizedString? = nil
        var defaultPrefixMatch: LocalizedString? = nil

        for localization in ls {
            // Priority 1: Exact match
            if localization.language.rawValue == targetLocaleIdentifier {
                self.init(localization.string)
                return
            }
            // Priority 2: Prefix match (store best regional)
            if localization.language.prefix == targetLocalePrefix {
                if prefixMatch == nil || prefixMatch!.language.rawValue.count < localization.language.rawValue.count {
                    prefixMatch = localization
                }
            }
            // Priority 3: Default exact match
            if localization.language == defaultLanguage {
                defaultMatch = localization
            }
            // Priority 4: Default prefix match (store best regional)
            if localization.language.prefix == defaultLanguage.prefix {
                if defaultPrefixMatch == nil || defaultPrefixMatch!.language.rawValue.count < localization.language.rawValue.count {
                    defaultPrefixMatch = localization
                }
            }
        }

        // --- Return based on priority --- 
        if let match = prefixMatch {
            self.init(match.string)
            return
        }
        if let match = defaultMatch {
            self.init(match.string)
            return
        }
        if let match = defaultPrefixMatch {
            self.init(match.string)
            return
        }

        // --- Final Fallbacks --- 
        // Try the *absolute* first language provided if nothing else worked
        if let firstString = ls.first?.string {
            self.init(firstString)
            print("⚠️ String(for: [Local...]): ⚠️ No locale match for '\(targetLocaleIdentifier)' or default '\(defaultLanguage.rawValue)'. Using first provided string ('\(ls.first!.language.rawValue)').")
            return
        }
        
        // Should be impossible if ls wasn't empty initially
        self.init("???")
        print("⚠️ String(for: [Local...]): ❌ UNEXPECTED FALLTHROUGH. No suitable string found for locale '\(targetLocaleIdentifier)'.")
    }

    // Keep this helper internal as well
    func localized(_ language: Language) -> LocalizedString {
        return LocalizedString(self, language:language)
    }
}
