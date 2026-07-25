import Elementary

/// Controls the CSS `list-style-position` property.
public enum TWTListStylePosition: String, TWToken, Sendable, Equatable, CaseIterable {
    case inside = "list-inside"
    case outside = "list-outside"
}

/// Controls the CSS `list-style-type` property.
public enum TWTListStyle: String, TWToken, Sendable, Equatable, CaseIterable {
    case disc = "list-disc"
    case decimal = "list-decimal"
    case none = "list-none"
}
