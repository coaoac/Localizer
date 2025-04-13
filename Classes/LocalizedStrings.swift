import Foundation

public struct LocalizedStrings: Codable, Hashable, ExpressibleByDictionaryLiteral, Sendable {

    // Add these typealiases to conform to ExpressibleByDictionaryLiteral
    public typealias Key = Language
    public typealias Value = String

    var localizations: [LocalizedString]

    // MARK: - Initializers

    init(_ strings: [LocalizedString] = []) {
        // Ensure uniqueness of language prefixes if needed (optional)
        // For simplicity, this example allows duplicates, last one wins on encoding
        self.localizations = strings
    }

    // Allow initialization with an array literal: let map: LocalizedStringMap = [.en("Hello"), .sv("Hej")]
    init(arrayLiteral elements: LocalizedString...) {
        self.init(elements)
    }

    // Allow initialization with a dictionary literal: let map: LocalizedStringMap = [.en: "Hello", .sv: "Hej"]
    public init(dictionaryLiteral elements: (Language, String)...) {
        self.localizations = elements.map { language, text in
            LocalizedString(text, language: language)
        }
    }

    // Allow initialization with a dictionary literal using String keys: let map: LocalizedStringMap = ["en": "Hello", "sv": "Hej"]
    init(dictionaryLiteral elements: (String, String)...) {
        self.localizations = elements.compactMap { langPrefix, text in
            Language.allCases.first { $0.prefix == langPrefix }
                .map { LocalizedString(text, language: $0) }
        }
    }

    // MARK: - Codable Implementation (The Core Logic)

    // Decodes from the dictionary format {"sv": "...", "en": "..."}
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let ingredientsMap = try container.decode([String: String].self)

        var tempIngredients: [LocalizedString] = []
        for (langPrefix, text) in ingredientsMap {
            if let language = Language.allCases.first(where: { $0.prefix == langPrefix }) {
                tempIngredients.append(LocalizedString(text, language: language))
            } else {
                print(
                    "Warning: Unknown language prefix '\(langPrefix)' found during decoding LocalizedStringMap."
                )
            }
        }
        self.localizations = tempIngredients
    }

    // Encodes to the dictionary format {"sv": "...", "en": "..."}
    public func encode(to encoder: Encoder) throws {
        if localizations.isEmpty {
            // Encode an empty dictionary if the array is empty
            var container = encoder.singleValueContainer()
            try container.encode([String: String]())  // Encode empty map explicitly
        } else {
            let ingredientsMap = localizations.reduce(into: [String: String]()) {
                result, localizedString in
                result[localizedString.language.prefix] = localizedString.string
                // Note: If duplicate languages exist, the last one in the array wins.
            }
            var container = encoder.singleValueContainer()
            try container.encode(ingredientsMap)
        }
    }

    // MARK: - Convenience Accessors (Optional)

    public subscript(language: Language) -> String? {
        get {
            localizations.first { $0.language == language }?.string
        }
        set {
            // Find the index of the existing localization for this language
            if let index = localizations.firstIndex(where: { $0.language == language }) {
                // If newValue is nil, remove the existing localization
                guard let newValue = newValue else {
                    localizations.remove(at: index)
                    return
                }
                // Otherwise, replace the existing localization with a new one
                localizations[index] = LocalizedString(newValue, language: language)
            } else if let newValue = newValue {
                // If no existing localization was found and newValue is not nil,
                // append a new localization
                localizations.append(LocalizedString(newValue, language: language))
            }
            // If no existing localization was found and newValue is nil, do nothing
        }
    }

    public var isEmpty: Bool {
        localizations.isEmpty
    }
}
