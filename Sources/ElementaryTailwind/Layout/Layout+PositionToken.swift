import Elementary

/// Controls the CSS `position` property.
public enum TWTPosition: String, TWToken, Sendable, Equatable, CaseIterable {
    case `static` = "static"
    case relative = "relative"
    case absolute = "absolute"
    case fixed = "fixed"
    case sticky = "sticky"
}

/// A value-only token for inset properties (`inset`, `top`, `right`, `bottom`, `left`, `inset-x`, `inset-y`).
///
/// Produces just the value suffix (e.g. `"4"`, `"0"`, `"auto"`, `"full"`) without a property prefix.
/// Modifier functions prepend the appropriate prefix (e.g. `inset-`, `top-`, `inset-x-`).
public enum TWTInset: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto
    case full
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "\(n)"
        case .zero: "0"
        case .auto: "auto"
        case .full: "full"
        case .arbitrary(let v): "[\(v)]"
        }
    }
}

/// Controls the CSS `z-index` property.
public enum TWTZIndex: TWToken, Sendable, Equatable {
    case number(Int)
    case auto

    public var rawValue: String {
        switch self {
        case .number(let n): "z-\(n)"
        case .auto: "z-auto"
        }
    }
}

/// Controls the CSS `order` property.
public enum TWTOrder: TWToken, Sendable, Equatable {
    case number(Int)
    case first
    case last
    case none

    public var rawValue: String {
        switch self {
        case .number(let n): "order-\(n)"
        case .first: "order-first"
        case .last: "order-last"
        case .none: "order-none"
        }
    }
}
