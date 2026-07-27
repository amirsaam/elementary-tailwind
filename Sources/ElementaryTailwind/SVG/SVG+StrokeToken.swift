import Elementary

/// Controls the CSS `stroke` property for SVG elements.
public struct TWTStroke: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "stroke-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "stroke-\(color.rawValue)"
        }
    }
}

/// Controls the CSS `stroke: none` for SVG elements.
public enum TWTStrokeNone: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "stroke-none"
}

/// Controls the CSS `stroke-width` property for SVG elements.
public enum TWTStrokeWidth: TWToken, Sendable, Equatable {
    case size(Int)

    public var rawValue: String {
        switch self {
        case .size(let n): "stroke-\(n)"
        }
    }
}
