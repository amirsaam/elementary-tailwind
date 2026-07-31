import Elementary

/// Controls the CSS `outline-color` property.
public struct TWTOutlineColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "outline-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "outline-\(color.rawValue)"
        }
    }
}

/// Controls the CSS `outline-offset` property.
public enum TWTOutlineOffset: TWToken, Sendable, Equatable {
    case size(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "outline-offset-\(n)"
        case .arbitrary(let v): "outline-offset-[\(v)]"
        }
    }
}

/// Controls the CSS `outline-style` property.
public enum TWTOutlineStyle: String, TWToken, Sendable, Equatable, CaseIterable {
    case solid = "outline-solid"
    case dashed = "outline-dashed"
    case dotted = "outline-dotted"
    case double = "outline-double"
    case hidden = "outline-hidden"
}

/// Controls the CSS `outline-width` property.
public enum TWTOutlineWidth: TWToken, Sendable, Equatable {
    case size(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "outline-\(n)"
        case .arbitrary(let v): "outline-[\(v)]"
        }
    }
}
