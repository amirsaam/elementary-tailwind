import Elementary

/// Controls the CSS `padding` property.
public enum TWTPadding: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "p-\(n)"
        case .zero: "p-0"
        }
    }
}

/// Controls the CSS `padding-inline` property (left + right).
public enum TWTPaddingX: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "px-\(n)"
        case .zero: "px-0"
        }
    }
}

/// Controls the CSS `padding-block` property (top + bottom).
public enum TWTPaddingY: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "py-\(n)"
        case .zero: "py-0"
        }
    }
}

/// Controls the CSS `padding-top` property.
public enum TWTPaddingTop: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "pt-\(n)"
        case .zero: "pt-0"
        }
    }
}

/// Controls the CSS `padding-right` property.
public enum TWTPaddingRight: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "pr-\(n)"
        case .zero: "pr-0"
        }
    }
}

/// Controls the CSS `padding-bottom` property.
public enum TWTPaddingBottom: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "pb-\(n)"
        case .zero: "pb-0"
        }
    }
}

/// Controls the CSS `padding-left` property.
public enum TWTPaddingLeft: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "pl-\(n)"
        case .zero: "pl-0"
        }
    }
}
