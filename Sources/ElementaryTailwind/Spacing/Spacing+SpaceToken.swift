import Elementary

/// Controls the CSS `space-x` property.
public enum TWTSpaceX: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case reverse
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "space-x-\(twFormat(n))"
        case .zero: "space-x-0"
        case .reverse: "space-x-reverse"
        case .arbitrary(let v): "space-x-[\(v)]"
        }
    }
}

/// Controls the CSS `space-y` property.
public enum TWTSpaceY: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case reverse
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "space-y-\(twFormat(n))"
        case .zero: "space-y-0"
        case .reverse: "space-y-reverse"
        case .arbitrary(let v): "space-y-[\(v)]"
        }
    }
}
