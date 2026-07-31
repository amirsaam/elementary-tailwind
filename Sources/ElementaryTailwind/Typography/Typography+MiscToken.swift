import Elementary

/// Controls the CSS `tab-size` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `tab-[12px]`).
public enum TWTTabSize: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "tab-size-\(n)"
        case .arbitrary(let v): "tab-[\(v)]"
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
