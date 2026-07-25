import Elementary

/// Controls the CSS `grid-column` property.
public enum TWTGridColumn: TWToken, Sendable, Equatable {
    case span(Int)
    case spanFull
    case auto

    public var rawValue: String {
        switch self {
        case .span(let n): "col-span-\(n)"
        case .spanFull: "col-span-full"
        case .auto: "col-auto"
        }
    }
}

/// Controls the CSS `grid-column-start` property.
public enum TWTGridColumnStart: TWToken, Sendable, Equatable {
    case value(Int)
    case auto

    public var rawValue: String {
        switch self {
        case .value(let n): "col-start-\(n)"
        case .auto: "col-start-auto"
        }
    }
}

/// Controls the CSS `grid-column-end` property.
public enum TWTGridColumnEnd: TWToken, Sendable, Equatable {
    case value(Int)
    case auto

    public var rawValue: String {
        switch self {
        case .value(let n): "col-end-\(n)"
        case .auto: "col-end-auto"
        }
    }
}
