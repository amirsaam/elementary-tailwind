import Elementary

/// Hides an element visually but keeps it accessible to screen readers.
public enum TWTScreenReader: String, TWToken, Sendable, Equatable, CaseIterable {
    case only = "sr-only"
    case notOnly = "not-sr-only"
}

/// Controls the CSS `forced-color-adjust` property.
public enum TWTForcedColorAdjust: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "forced-color-adjust-auto"
    case none = "forced-color-adjust-none"
}
