import Elementary

/// Controls the CSS `tab-size` property.
public enum TWTTabSize: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "tab-size-\(n)"
        }
    }
}

/// Controls the CSS `hyphens` property.
public enum TWTHyphens: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "hyphens-none"
    case manual = "hyphens-manual"
    case auto = "hyphens-auto"
}

/// Controls the CSS `list-style-image` property.
public enum TWTListStyleImage: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "list-image-none"
}
