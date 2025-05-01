import Foundation

extension Data {
    /// Initializes `Data` by selecting the best match from the provided `LocalizedDataList`
    /// based on the current device locale and the default fallback language defined in `Localizer`.
    ///
    /// This initializer uses the `dataForCurrentDeviceLocale()` method of the `LocalizedDataList`
    /// struct to perform the selection logic. If no suitable localization can be found
    /// according to the fallback rules, this initializer will initialize with *empty* `Data`
    /// and print a warning message to the console indicating that a fallback occurred.
    ///
    /// - Parameter localizedDataList: The `LocalizedDataList` instance containing multiple localizations
    ///                             of the data, each potentially with different types and encodings.
    public init(_ localizedDataList: LocalizedDataList) {
        // Use the selection logic already built into LocalizedDataList
        if let selectedValue = localizedDataList.dataForCurrentDeviceLocale() {
            // selectedValue is the LocalizedData.Value struct: { data: Data, type: DataType, encoding: DataEncoding }
            // Initialize self (the Data instance) with the 'data' part of the struct.
            self.init(selectedValue.data)
        } else {
            // Fallback: Initialize with empty Data if no suitable localization is found.
            self.init()  // Equivalent to Data()

            // Provide a warning message similar to the String extension's fallback.
            let localeIdentifier = Locale.current.identifier.replacingOccurrences(
                of: "_", with: "-")
            // Assuming Localizer.default?.rawValue gives the BCP 47 identifier (e.g., "en", "fr")
            let defaultLangIdentifier = Localizer.default.rawValue
            // Get available locale identifiers for the warning message
            let availableLocales = localizedDataList.localizations.map { $0.localeIdentifier }
                .sorted().joined(separator: ", ")

            print(
                "⚠️ Data(LocalizedDataList): ❌ Could not find suitable localization for locale '\(localeIdentifier)' or default '\(defaultLangIdentifier)'. Available locales: [\(availableLocales)]. Initializing with empty Data."
            )
        }
    }
}
