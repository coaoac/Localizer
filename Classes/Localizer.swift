import Foundation

private var localizer = Localizer()

final class Localizer: Localizable {
    static var localeKey: LocaleKey? { return \.locale }
    
    var locale: String? {
        return currentLocale.identifier
    }
    
    let currentLocale = Locale.current
    
    var defaultLanguage: Language = .en
    
    lazy var currentLanguage: Language = detectCurrentLanguage()
    
    func detectCurrentLanguage() -> Language {
        if let language = Language(rawValue: currentLocale.identifier) {
            return language
        }
        if let locale = currentLocale.identifier.components(separatedBy: "_").first, let language = Language(rawValue: locale) {
            return language
        }
        return defaultLanguage
    }
    
    static var shared: Localizer {
        return localizer
    }
    
    static var current: Language {
        get {
            return shared.currentLanguage
        }
        set {
            shared.currentLanguage = newValue
        }
    }
    
    static var `default`: Language {
        get {
            return shared.defaultLanguage
        }
        set {
            shared.defaultLanguage = newValue
        }
    }
}
