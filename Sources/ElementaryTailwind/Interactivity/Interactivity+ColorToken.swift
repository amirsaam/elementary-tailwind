import Elementary

/// Controls the CSS `accent-color` property.
public struct TWTAccentColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor) { rawValue = "accent-\(color.rawValue)" }
}

/// Controls the CSS `caret-color` property.
public struct TWTCaretColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor) { rawValue = "caret-\(color.rawValue)" }
}

/// Controls the CSS `color-scheme` property.
public enum TWTColorScheme: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "scheme-normal"
    case dark = "scheme-dark"
    case light = "scheme-light"
    case lightDark = "scheme-light-dark"
    case onlyDark = "scheme-only-dark"
    case onlyLight = "scheme-only-light"
}
