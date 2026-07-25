import Elementary

/// Hides an element visually but keeps it accessible to screen readers.
public enum TWTScreenReader: String, TWToken, Sendable, Equatable, CaseIterable {
    case only = "sr-only"
    case notOnly = "not-sr-only"
}
