import Foundation

public extension Data {
    // --- Nested Enums for Type and Encoding ---
    public enum Format: String, Codable, Sendable, Equatable, Hashable {
        case jpeg = "image/jpeg"
        case png = "image/png"
        case gif = "image/gif"
        case webp = "image/webp"
        case svg = "image/svg+xml"
        case tiff = "image/tiff"
        // Add other relevant data types (e.g., text/plain, application/json) if needed
        case plainText = "text/plain"
        case json = "application/json"
        // ... etc.
    }

    public enum Encoding: String, Codable, Sendable, Equatable, Hashable {
        case base64
        // Add other encodings if necessary (e.g., none, utf8 for text)
        case none  // Represents raw Data without specific encoding layer like base64
        case utf8  // For text data stored directly in Data
    }
}
