import Foundation

/// Represents a string value associated with a specific language identifier.
public struct LocalizedString: Sendable, Codable, Hashable, Equatable {
    /// The BCP 47 language identifier (e.g., "en", "sv", "fr").
    public let language: Language

    /// The actual string value for this language.
    public let string: String

    /// Convenience Initializer using Language enum (creates base language identifier).
    public init(_ string: String, language: Language) {
        // No need for failable init here as Language.rawValue is controlled
        self.language = language  // Already BCP 47 base code
        self.string = string
    }
}
