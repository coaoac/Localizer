import Foundation

public struct LocalizedData: Sendable, Hashable {  // Codable/Equatable handled manually/synthesized

    /// Struct holding the localized data payload with typed enums.
    public struct Value: Sendable, Codable, Equatable, Hashable {
        public let data: Data
        public let type: Data.Format  // Use the nested enum
        public let encoding: Data.Encoding  // Use the nested enum
    }

    // --- Main LocalizedData Properties ---
    /// The base language component.
    public let language: Language

    /// The optional region component (e.g., "US", "GB", "419").
    public let region: String?

    /// The associated data payload.
    public let value: Value

    /// Describes the supported types of locale identifiers for this struct.
    public enum LocaleType: Sendable, Equatable, Hashable {
        case languageOnly
        case languageAndRegion
    }

    /// Determines the type of locale identifier based on stored components.
    public var type: LocaleType {
        return region == nil ? .languageOnly : .languageAndRegion
    }

    /// Reconstructs the BCP 47 locale identifier string.
    public var localeIdentifier: String {
        if let region = region {
            return "\(language.rawValue)-\(region)"
        } else {
            return language.rawValue
        }
    }

    // --- Initializers ---

    /// Designated Initializer: Creates data with specific language and optional region.
    public init?(language: Language, region: String? = nil, value: Value) {
        if let reg = region {
            guard !reg.isEmpty, reg.range(of: "^[a-zA-Z0-9]+$", options: .regularExpression) != nil
            else {
                print("Warning: Invalid region format provided: \(reg)")
                return nil
            }
            self.region = reg
        } else {
            self.region = nil
        }
        self.language = language
        self.value = value
    }

    /// Failable Initializer: Parses a locale identifier string (lang or lang-REGION).
    public init?(localeIdentifier: String, value: Value) {
        let components = localeIdentifier.split(separator: "-").map(String.init)
        guard !components.isEmpty else { return nil }
        guard let lang = Language(rawValue: components[0]) else { return nil }

        switch components.count {
        case 1:
            self.language = lang
            self.region = nil
            self.value = value
        case 2:
            let potentialRegion = components[1]
            guard potentialRegion.count != 4 || !(potentialRegion.first?.isUppercase ?? false)
            else { return nil }  // Reject scripts
            guard !potentialRegion.isEmpty,
                potentialRegion.range(of: "^[a-zA-Z0-9]+$", options: .regularExpression) != nil
            else { return nil }  // Validate region format
            self.language = lang
            self.region = potentialRegion
            self.value = value
        default:
            return nil  // Reject > 2 components
        }
    }

    /// Convenience initializer using just Language (creates languageOnly type).
    public init(_ value: Value, language: Language) {
        self.language = language
        self.region = nil
        self.value = value
    }
}

// --- Codable Conformance (using localeIdentifier string) ---
extension LocalizedData: Codable {
    // Uses the same CodingKeys and logic as before, as the internal
    // structure of `Value`'s Codable conformance is handled automatically
    // due to `DataType` and `DataEncoding` conforming to Codable.
    enum CodingKeys: String, CodingKey {
        case localeIdentifier
        case value
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let identifier = try container.decode(String.self, forKey: .localeIdentifier)
        let val = try container.decode(Value.self, forKey: .value)  // Decodes Value struct

        guard let parsedData = LocalizedData(localeIdentifier: identifier, value: val) else {
            throw DecodingError.dataCorruptedError(
                forKey: .localeIdentifier, in: container,
                debugDescription:
                    "Invalid locale identifier format found during decoding: \(identifier)")
        }
        self.language = parsedData.language
        self.region = parsedData.region
        self.value = parsedData.value
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.localeIdentifier, forKey: .localeIdentifier)
        try container.encode(self.value, forKey: .value)  // Encodes Value struct
    }
}
