import Elementary

/// Controls the CSS `--tw-ring-color` property.
public struct TWRingColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity { rawValue = "ring-\(color.rawValue)/\(opacity)" }
        else { rawValue = "ring-\(color.rawValue)" }
    }
}

/// Controls the CSS `--tw-ring-offset-color` property.
public struct TWRingOffsetColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity { rawValue = "ring-offset-\(color.rawValue)/\(opacity)" }
        else { rawValue = "ring-offset-\(color.rawValue)" }
    }
}

/// Controls the CSS `--tw-ring-offset-width` property.
public enum TWRingOffsetWidth: TWToken, Sendable, Equatable {
    case size(Int)

    public var rawValue: String {
        switch self {
        case .size(let n): "ring-offset-\(n)"
        }
    }
}

/// Controls the CSS `ring-width` property.
public enum TWRingWidth: TWToken, Sendable, Equatable {
    case size(Int)
    case inset(Int)

    public var rawValue: String {
        switch self {
        case .size(let n): "ring-\(n)"
        case .inset(let n): "ring-inset-\(n)"
        }
    }
}
