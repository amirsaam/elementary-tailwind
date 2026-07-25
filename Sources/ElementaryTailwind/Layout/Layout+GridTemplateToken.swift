import Elementary

/// Controls the CSS `grid-template-columns` property.
public enum TWTGridTemplateColumns: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "grid-cols-\(n)"
        }
    }
}

/// Controls the CSS `grid-template-rows` property.
public enum TWTGridTemplateRows: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "grid-rows-\(n)"
        }
    }
}
