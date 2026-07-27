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

/// Controls the CSS `margin-top` property.
public enum TWTMarginTop: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto

    public var rawValue: String {
        switch self {
        case .size(let n): "mt-\(n)"
        case .zero: "mt-0"
        case .auto: "mt-auto"
        }
    }
}

/// Controls the CSS `margin-right` property.
public enum TWTMarginRight: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto

    public var rawValue: String {
        switch self {
        case .size(let n): "mr-\(n)"
        case .zero: "mr-0"
        case .auto: "mr-auto"
        }
    }
}

/// Controls the CSS `margin-bottom` property.
public enum TWTMarginBottom: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto

    public var rawValue: String {
        switch self {
        case .size(let n): "mb-\(n)"
        case .zero: "mb-0"
        case .auto: "mb-auto"
        }
    }
}

/// Controls the CSS `margin-left` property.
public enum TWTMarginLeft: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto

    public var rawValue: String {
        switch self {
        case .size(let n): "ml-\(n)"
        case .zero: "ml-0"
        case .auto: "ml-auto"
        }
    }
}
