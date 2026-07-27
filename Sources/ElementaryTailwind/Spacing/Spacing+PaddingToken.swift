import Elementary

/// Controls the CSS `padding` property.
public enum TWTPadding: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "p-\(twFormat(n))"
        case .zero: "p-0"
        case .arbitrary(let v): "p-[\(v)]"
        }
    }
}

/// Controls the CSS `padding-inline` property (left + right).
public enum TWTPaddingX: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "px-\(twFormat(n))"
        case .zero: "px-0"
        case .arbitrary(let v): "px-[\(v)]"
        }
    }
}

/// Controls the CSS `padding-block` property (top + bottom).
public enum TWTPaddingY: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "py-\(twFormat(n))"
        case .zero: "py-0"
        case .arbitrary(let v): "py-[\(v)]"
        }
    }
}

/// Controls the CSS `padding-top` property.
public enum TWTPaddingTop: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "pt-\(twFormat(n))"
        case .zero: "pt-0"
        case .arbitrary(let v): "pt-[\(v)]"
        }
    }
}

/// Controls the CSS `padding-right` property.
public enum TWTPaddingRight: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "pr-\(twFormat(n))"
        case .zero: "pr-0"
        case .arbitrary(let v): "pr-[\(v)]"
        }
    }
}

/// Controls the CSS `padding-bottom` property.
public enum TWTPaddingBottom: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "pb-\(twFormat(n))"
        case .zero: "pb-0"
        case .arbitrary(let v): "pb-[\(v)]"
        }
    }
}

/// Controls the CSS `padding-left` property.
public enum TWTPaddingLeft: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "pl-\(twFormat(n))"
        case .zero: "pl-0"
        case .arbitrary(let v): "pl-[\(v)]"
        }
    }
}
