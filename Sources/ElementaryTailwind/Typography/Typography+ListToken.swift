import Elementary

/// Controls the CSS `list-style-position` property.
public enum TWTListStylePosition: String, TWToken, Sendable, Equatable, CaseIterable {
    case inside = "list-inside"
    case outside = "list-outside"
}

/// Controls the CSS `list-style-type` property.
public enum TWTListStyleType: TWToken, Sendable, Equatable {
    case disc
    case decimal
    case none
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .disc: "list-disc"
        case .decimal: "list-decimal"
        case .none: "list-none"
        case .arbitrary(let v): "list-[\(v)]"
        }
    }
}
