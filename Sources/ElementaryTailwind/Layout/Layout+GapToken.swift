import Elementary

/// Controls the CSS `gap` property.
public enum TWTGap: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "gap-\(n)"
        case .zero: "gap-0"
        }
    }
}

/// Controls the CSS `column-gap` property.
public enum TWTGapX: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "gap-x-\(n)"
        case .zero: "gap-x-0"
        }
    }
}

/// Controls the CSS `row-gap` property.
public enum TWTGapY: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "gap-y-\(n)"
        case .zero: "gap-y-0"
        }
    }
}
