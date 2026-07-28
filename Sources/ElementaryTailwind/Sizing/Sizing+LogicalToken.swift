import Elementary

/// Controls the CSS `inline-size` property.
public enum TWTInlineSize: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case auto
    case full
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "w-\(twFormat(n))"
        case .fraction(let f): "w-\(f)"
        case .auto: "w-auto"
        case .full: "w-full"
        case .arbitrary(let v): "w-[\(v)]"
        }
    }
}

/// Controls the CSS `min-inline-size` property.
public enum TWTMinInlineSize: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case zero
    case full
    case min
    case max
    case fit
    case container(String)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "min-w-\(twFormat(n))"
        case .fraction(let f): "min-w-\(f)"
        case .zero: "min-w-0"
        case .full: "min-w-full"
        case .min: "min-w-min"
        case .max: "min-w-max"
        case .fit: "min-w-fit"
        case .container(let s): "min-w-\(s)"
        case .arbitrary(let v): "min-w-[\(v)]"
        }
    }
}

/// Controls the CSS `max-inline-size` property.
public enum TWTMaxInlineSize: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case xxxs
    case xxs
    case xs
    case sm
    case md
    case lg
    case xl
    case xxl
    case xxxl
    case fourxl
    case fivexl
    case sixxl
    case sevenxl
    case full
    case min
    case max
    case fit
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "max-w-\(twFormat(n))"
        case .fraction(let f): "max-w-\(f)"
        case .xxxs: "max-w-3xs"
        case .xxs: "max-w-2xs"
        case .xs: "max-w-xs"
        case .sm: "max-w-sm"
        case .md: "max-w-md"
        case .lg: "max-w-lg"
        case .xl: "max-w-xl"
        case .xxl: "max-w-2xl"
        case .xxxl: "max-w-3xl"
        case .fourxl: "max-w-4xl"
        case .fivexl: "max-w-5xl"
        case .sixxl: "max-w-6xl"
        case .sevenxl: "max-w-7xl"
        case .full: "max-w-full"
        case .min: "max-w-min"
        case .max: "max-w-max"
        case .fit: "max-w-fit"
        case .arbitrary(let v): "max-w-[\(v)]"
        }
    }
}

/// Controls the CSS `block-size` property.
public enum TWTBlockSize: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case auto
    case full
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "h-\(twFormat(n))"
        case .fraction(let f): "h-\(f)"
        case .auto: "h-auto"
        case .full: "h-full"
        case .arbitrary(let v): "h-[\(v)]"
        }
    }
}

/// Controls the CSS `min-block-size` property.
public enum TWTMinBlockSize: TWToken, Sendable, Equatable {
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

/// Controls the CSS `max-block-size` property.
public enum TWTMaxBlockSize: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
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
        case .full: "max-h-full"
        case .screen: "max-h-screen"
        case .min: "max-h-min"
        case .max: "max-h-max"
        case .fit: "max-h-fit"
        case .arbitrary(let v): "max-h-[\(v)]"
        }
    }
}
