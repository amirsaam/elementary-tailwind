import Elementary

/// Controls the CSS `height` property.
public enum TWTHeight: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case auto
    case full
    case screen
    case min
    case max
    case fit
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "h-\(twFormat(n))"
        case .fraction(let f): "h-\(f)"
        case .auto: "h-auto"
        case .full: "h-full"
        case .screen: "h-screen"
        case .min: "h-min"
        case .max: "h-max"
        case .fit: "h-fit"
        case .arbitrary(let v): "h-[\(v)]"
        }
    }
}

/// Controls the CSS `min-height` property.
public enum TWTMinHeight: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case zero
    case full
    case min
    case max
    case fit
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "min-h-\(twFormat(n))"
        case .fraction(let f): "min-h-\(f)"
        case .zero: "min-h-0"
        case .full: "min-h-full"
        case .min: "min-h-min"
        case .max: "min-h-max"
        case .fit: "min-h-fit"
        case .arbitrary(let v): "min-h-[\(v)]"
        }
    }
}

/// Controls the CSS `max-height` property.
public enum TWTMaxHeight: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case none
    case full
    case screen
    case min
    case max
    case fit
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "max-h-\(twFormat(n))"
        case .fraction(let f): "max-h-\(f)"
        case .none: "max-h-none"
        case .full: "max-h-full"
        case .screen: "max-h-screen"
        case .min: "max-h-min"
        case .max: "max-h-max"
        case .fit: "max-h-fit"
        case .arbitrary(let v): "max-h-[\(v)]"
        }
    }
}
