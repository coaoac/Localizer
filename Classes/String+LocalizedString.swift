import Foundation

extension String {
    private var localePrefix: String {
        return components(separatedBy: "_").first ?? self
    }
    
    init (_ ls: LocalizedString...) {
        self.init(for: Localizer.shared, ls)
    }
    
    init <L: Localizable>(for localizable: L, _ ls: LocalizedString...) {
        self.init(for: localizable, ls)
    }
    
    init (_ ls: [LocalizedString]) {
        self.init(for: Localizer.shared, ls)
    }
    
    init <L: Localizable>(for localizable: L, _ ls: [LocalizedString]) {
        guard ls.count > 0 else {
            self.init("")
            print("⚠️ Localization: ❌ EMPTY STRING")
            return
        }
        guard let currentLocale = localizable.locale else {
            self.init("")
            print("⚠️ Localization: ❌ NIL LOCALE IN LOCALIZABLE OBJECT")
            return
        }
        var lsByPrefix: LocalizedString?
        for ls in ls {
            switch ls.type {
            case .short:
                if currentLocale.starts(with: ls.language.rawValue) {
                    self.init(ls.string)
                    return
                }
            case .long:
                if ls.language.rawValue == currentLocale {
                    self.init(ls.string)
                    return
                } else if ls.prefix == currentLocale.localePrefix {
                    lsByPrefix = ls
                }
            }
        }
        if let ls = lsByPrefix {
            self.init(ls.string)
            return
        }
        if let ls = ls.first(where: {
            $0.language.rawValue.contains(Localizer.default.rawValue)
                || $0.prefix == Localizer.default.prefix }) {
            self.init(ls.string)
            return
        }
        self.init("❔❔❔")
        print("⚠️ Localizer: ❌ UNABLE TO DETECT LOCALE 🤬 set breakpoint here to find that string (current locale: \(Localizer.current)")
    }

    func localized(_ language: Language) -> LocalizedString {
        return LocalizedString(self, language:language)
    }
}
