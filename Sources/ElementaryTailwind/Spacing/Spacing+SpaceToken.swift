import Elementary

/// Controls the CSS `space-x` property.
public enum TWTSpaceX: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case reverse

    public var rawValue: String {
        switch self {
        case .size(let n): "space-x-\(n)"
        case .zero: "space-x-0"
        case .reverse: "space-x-reverse"
        }
    }
}

/// Controls the CSS `space-y` property.
public enum TWTSpaceY: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case reverse

    public var rawValue: String {
        switch self {
        case .size(let n): "space-y-\(n)"
        case .zero: "space-y-0"
        case .reverse: "space-y-reverse"
        }
    }
}
