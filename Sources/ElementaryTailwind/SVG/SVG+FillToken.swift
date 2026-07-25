import Elementary

/// Controls the CSS `fill` property for SVG elements.
public struct TWTFill: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor) { rawValue = "fill-\(color.rawValue)" }
}

/// Controls the CSS `fill: none` for SVG elements.
public enum TWTFillNone: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "fill-none"
}
