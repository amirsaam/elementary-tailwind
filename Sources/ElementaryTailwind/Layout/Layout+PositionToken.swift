import Elementary

/// Controls the CSS `position` property.
public enum TWTPosition: String, TWToken, Sendable, Equatable, CaseIterable {
    case `static` = "static"
    case relative = "relative"
    case absolute = "absolute"
    case fixed = "fixed"
    case sticky = "sticky"
}

/// Controls the CSS `inset` property.
public enum TWTInset: TWToken, Sendable, Equatable {
    case size(Int)
    case zero
    case auto
    case full

    public var rawValue: String {
        switch self {
        case .size(let n): "inset-\(n)"
        case .zero: "inset-0"
        case .auto: "inset-auto"
        case .full: "inset-full"
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
