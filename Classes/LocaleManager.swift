import Foundation

/// Centralized service for handling language, country and localization functionality
public struct LocalizationService {
    
    // MARK: - Language Codes
    
    /// Maps a Language enum to an ISO 639-1 two-letter language code
    /// - Parameter language: The language to convert
    /// - Returns: The ISO 639-1 language code
    public static func isoCode(for language: Language) -> String {
        return language.rawValue
    }
    
    /// Returns a default language preference order
    /// - Returns: Array of languages in preferred order
    public static func defaultLanguagePreference() -> [Language] {
        return [.sv, .en]
    }

    /// Gets market and locale tuple based on language
    /// - Parameter language: The language to get market and locale for
    /// - Returns: A tuple with market (country code) and locale string
    public static func getMarketAndLocale(for language: Language) -> (market: String, locale: String) {
        let market = CountryMapper.countryCode(for: language)
        let locale = self.locale(for: language)
        return (market, locale)
    }
    
    // MARK: - Locale Formatting
    
    /// Gets the locale string for a language (language code + country code)
    /// - Parameter language: The language to get the locale for
    /// - Returns: The locale string in format "xx-XX"
    public static func locale(for language: Language) -> String {
        let langCode = isoCode(for: language)
        let countryCode = CountryMapper.countryCode(for: language)
        return "\(langCode)-\(countryCode)"
    }
    
    // MARK: - Localized String Helpers
    
    /// Get the primary and fallback languages from a provided list
    public static func getPrimaryAndFallback(from languages: [Language]) -> (primary: Language, fallback: Language?) {
        let defaultLanguages = [Language.sv, Language.en]
        let availableLanguages = languages.isEmpty ? defaultLanguages : languages
        
        // Primary is Swedish if available, otherwise the first language
        let primary = availableLanguages.contains(.sv) ? .sv : availableLanguages[0]
        
        // Fallback is English if available and not the primary, otherwise the second language if exists
        let fallback: Language?
        if primary != .en && availableLanguages.contains(.en) {
            fallback = .en
        } else if availableLanguages.count > 1 && availableLanguages[0] != availableLanguages[1] {
            fallback = availableLanguages[1]
        } else {
            fallback = nil
        }
        
        return (primary, fallback)
    }
}