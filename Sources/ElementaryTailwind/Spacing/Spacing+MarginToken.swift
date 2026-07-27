import Elementary

/// Controls the CSS `margin` property.
public enum TWTMargin: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case auto
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "m-\(twFormat(n))"
        case .zero: "m-0"
        case .auto: "m-auto"
        case .arbitrary(let v): "m-[\(v)]"
        }
    }
}

/// Controls the CSS `margin-inline` property (left + right).
public enum TWTMarginX: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case auto
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "mx-\(twFormat(n))"
        case .zero: "mx-0"
        case .auto: "mx-auto"
        case .arbitrary(let v): "mx-[\(v)]"
        }
    }
}

/// Controls the CSS `margin-block` property (top + bottom).
public enum TWTMarginY: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case auto
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "my-\(twFormat(n))"
        case .zero: "my-0"
        case .auto: "my-auto"
        case .arbitrary(let v): "my-[\(v)]"
        }
    }
}

/// Controls the CSS `margin-top` property.
public enum TWTMarginTop: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case auto
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "mt-\(twFormat(n))"
        case .zero: "mt-0"
        case .auto: "mt-auto"
        case .arbitrary(let v): "mt-[\(v)]"
        }
    }
}

/// Controls the CSS `margin-right` property.
public enum TWTMarginRight: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case auto
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "mr-\(twFormat(n))"
        case .zero: "mr-0"
        case .auto: "mr-auto"
        case .arbitrary(let v): "mr-[\(v)]"
        }
    }
}

/// Controls the CSS `margin-bottom` property.
public enum TWTMarginBottom: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case auto
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "mb-\(twFormat(n))"
        case .zero: "mb-0"
        case .auto: "mb-auto"
        case .arbitrary(let v): "mb-[\(v)]"
        }
    }
}

/// Controls the CSS `margin-left` property.
public enum TWTMarginLeft: TWToken, Sendable, Equatable {
    case size(Double)
    case zero
    case auto
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "ml-\(twFormat(n))"
        case .zero: "ml-0"
        case .auto: "ml-auto"
        case .arbitrary(let v): "ml-[\(v)]"
        }
    }
}
