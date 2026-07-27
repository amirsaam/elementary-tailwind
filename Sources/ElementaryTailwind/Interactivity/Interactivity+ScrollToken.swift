import Elementary

/// Controls the CSS `scroll-behavior` property.
public enum TWTScrollBehavior: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "scroll-auto"
    case smooth = "scroll-smooth"
}

/// Controls the CSS `scroll-snap-align` property.
public enum TWTScrollSnapAlign: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "snap-none"
    case start = "snap-start"
    case end = "snap-end"
    case center = "snap-center"
}

/// Controls the CSS `scroll-snap-type` property.
public enum TWTScrollSnapType: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "snap-none"
    case x = "snap-x"
    case y = "snap-y"
    case both = "snap-both"
}

/// Controls the CSS `scroll-snap-stop` property.
public enum TWTScrollSnapStop: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "snap-stop-normal"
    case always = "snap-stop-always"
}

/// Controls the CSS `scroll-margin` property.
public enum TWTScrollMargin: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-m-\(n)"
        }
    }
}

/// Controls the CSS `scroll-padding` property.
public enum TWTScrollPadding: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-p-\(n)"
        }
    }
}

/// Controls the CSS `scroll-margin-inline` property (left + right).
public enum TWTScrollMarginX: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-mx-\(n)"
        }
    }
}

/// Controls the CSS `scroll-margin-block` property (top + bottom).
public enum TWTScrollMarginY: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-my-\(n)"
        }
    }
}

/// Controls the CSS `scroll-margin-top` property.
public enum TWTScrollMarginTop: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-mt-\(n)"
        }
    }
}

/// Controls the CSS `scroll-margin-right` property.
public enum TWTScrollMarginRight: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-mr-\(n)"
        }
    }
}

/// Controls the CSS `scroll-margin-bottom` property.
public enum TWTScrollMarginBottom: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-mb-\(n)"
        }
    }
}

/// Controls the CSS `scroll-margin-left` property.
public enum TWTScrollMarginLeft: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-ml-\(n)"
        }
    }
}

/// Controls the CSS `scroll-padding-inline` property (left + right).
public enum TWTScrollPaddingX: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-px-\(n)"
        }
    }
}

/// Controls the CSS `scroll-padding-block` property (top + bottom).
public enum TWTScrollPaddingY: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-py-\(n)"
        }
    }
}

/// Controls the CSS `scroll-padding-top` property.
public enum TWTScrollPaddingTop: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-pt-\(n)"
        }
    }
}

/// Controls the CSS `scroll-padding-right` property.
public enum TWTScrollPaddingRight: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-pr-\(n)"
        }
    }
}

/// Controls the CSS `scroll-padding-bottom` property.
public enum TWTScrollPaddingBottom: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-pb-\(n)"
        }
    }
}

/// Controls the CSS `scroll-padding-left` property.
public enum TWTScrollPaddingLeft: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "scroll-pl-\(n)"
        }
    }
}

/// Controls the CSS `scrollbar-color` property.
public struct TWTScrollbarColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "scrollbar-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "scrollbar-\(color.rawValue)"
        }
    }
}

/// Controls the CSS `scrollbar-width` property.
public enum TWTScrollbarWidth: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "scrollbar-auto"
    case thin = "scrollbar-thin"
    case none = "scrollbar-none"
}

/// Controls the CSS `scrollbar-gutter` property.
public enum TWTScrollbarGutter: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "scrollbar-gutter-auto"
    case stable = "scrollbar-gutter-stable"
    case both = "scrollbar-gutter-stable-both"
}
