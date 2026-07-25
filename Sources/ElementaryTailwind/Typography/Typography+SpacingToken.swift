import Elementary

/// Controls the CSS `letter-spacing` property.
public enum TWTLetterSpacing: String, TWToken, Sendable, Equatable, CaseIterable {
    case tighter = "tracking-tighter"
    case tight = "tracking-tight"
    case normal = "tracking-normal"
    case wide = "tracking-wide"
    case wider = "tracking-wider"
    case widest = "tracking-widest"
}

/// Controls the CSS `line-height` property.
public enum TWTLineHeight: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "leading-none"
    case tight = "leading-tight"
    case snug = "leading-snug"
    case normal = "leading-normal"
    case relaxed = "leading-relaxed"
    case loose = "leading-loose"
}

/// Controls the CSS `line-clamp` property.
public enum TWTLineClamp: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "line-clamp-\(n)"
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
