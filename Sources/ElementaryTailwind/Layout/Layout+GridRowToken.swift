import Elementary

/// Controls the CSS `grid-row` property.
public enum TWTGridRow: TWToken, Sendable, Equatable {
    case span(Int)
    case spanFull
    case auto

    public var rawValue: String {
        switch self {
        case .span(let n): "row-span-\(n)"
        case .spanFull: "row-span-full"
        case .auto: "row-auto"
        }
    }
}

/// Controls the CSS `grid-row-start` property.
public enum TWTGridRowStart: TWToken, Sendable, Equatable {
    case value(Int)
    case auto

    public var rawValue: String {
        switch self {
        case .value(let n): "row-start-\(n)"
        case .auto: "row-start-auto"
        }
    }
}

/// Controls the CSS `grid-row-end` property.
public enum TWTGridRowEnd: TWToken, Sendable, Equatable {
    case value(Int)
    case auto

    public var rawValue: String {
        switch self {
        case .value(let n): "row-end-\(n)"
        case .auto: "row-end-auto"
        }
    }
}
