import Elementary

/// Controls the CSS `float` property.
public enum TWTFloat: String, TWToken, Sendable, Equatable, CaseIterable {
    case start = "float-start"
    case end = "float-end"
    case left = "float-left"
    case right = "float-right"
    case none = "float-none"
}

/// Controls the CSS `clear` property.
public enum TWTClear: String, TWToken, Sendable, Equatable, CaseIterable {
    case start = "clear-start"
    case end = "clear-end"
    case left = "clear-left"
    case right = "clear-right"
    case both = "clear-both"
    case none = "clear-none"
}
