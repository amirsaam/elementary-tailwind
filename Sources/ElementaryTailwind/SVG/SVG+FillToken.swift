import Elementary

/// Controls the CSS `fill` property for SVG elements.
public struct TWTFill: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "fill-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "fill-\(color.rawValue)"
        }
    }
}

/// Controls the CSS `fill: none` for SVG elements.
public enum TWTFillNone: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "fill-none"
}
