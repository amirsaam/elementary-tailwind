import Elementary

/// Controls the CSS `letter-spacing` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `tracking-[.25em]`).
public enum TWTLetterSpacing: TWToken, Sendable, Equatable {
    case tighter
    case tight
    case normal
    case wide
    case wider
    case widest
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .tighter: "tracking-tighter"
        case .tight: "tracking-tight"
        case .normal: "tracking-normal"
        case .wide: "tracking-wide"
        case .wider: "tracking-wider"
        case .widest: "tracking-widest"
        case .arbitrary(let v): "tracking-[\(v)]"
        }
    }
}

/// Controls the CSS `line-height` property.
public enum TWTLineHeight: TWToken, Sendable, Equatable {
    case none
    case tight
    case snug
    case normal
    case relaxed
    case loose
    case value(Double)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "leading-none"
        case .tight: "leading-tight"
        case .snug: "leading-snug"
        case .normal: "leading-normal"
        case .relaxed: "leading-relaxed"
        case .loose: "leading-loose"
        case .value(let n): "leading-\(twFormat(n))"
        case .arbitrary(let v): "leading-[\(v)]"
        }
    }
}

/// Controls the CSS `line-clamp` property.
public enum TWTLineClamp: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "line-clamp-\(n)"
        case .arbitrary(let v): "line-clamp-[\(v)]"
        }
    }
}

/// Controls the CSS `text-indent` property.
public enum TWTTextIndent: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "indent-\(n)"
        }
    }
}
