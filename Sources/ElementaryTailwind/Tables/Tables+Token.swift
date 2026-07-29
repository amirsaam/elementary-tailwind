import Elementary

/// Controls the CSS `border-collapse` property.
public enum TWTBorderCollapse: String, TWToken, Sendable, Equatable, CaseIterable {
    case collapse = "border-collapse"
    case separate = "border-separate"
}

/// Controls the CSS `border-spacing` property.
public enum TWTBorderSpacing: TWToken, Sendable, Equatable {
    case size(Int)
    case zero

    public var rawValue: String {
        switch self {
        case .size(let n): "border-spacing-\(n)"
        case .zero: "border-spacing-0"
        }
    }
}

/// Controls the CSS `table-layout` property.
public enum TWTTableLayout: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "table-auto"
    case fixed = "table-fixed"
}

/// Controls the CSS `caption-side` property.
public enum TWTCaptionSide: String, TWToken, Sendable, Equatable, CaseIterable {
    case top = "caption-top"
    case bottom = "caption-bottom"
}
