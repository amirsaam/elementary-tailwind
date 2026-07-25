import Elementary

/// Controls the CSS `margin` property.
public enum TWTMargin: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto

    public var rawValue: String {
        switch self {
        case .size(let n): "m-\(n)"
        case .zero: "m-0"
        case .auto: "m-auto"
        }
    }
}

/// Controls the CSS `margin-inline` property (left + right).
public enum TWTMarginX: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto

    public var rawValue: String {
        switch self {
        case .size(let n): "mx-\(n)"
        case .zero: "mx-0"
        case .auto: "mx-auto"
        }
    }
}

/// Controls the CSS `margin-block` property (top + bottom).
public enum TWTMarginY: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto

    public var rawValue: String {
        switch self {
        case .size(let n): "my-\(n)"
        case .zero: "my-0"
        case .auto: "my-auto"
        }
    }
}
