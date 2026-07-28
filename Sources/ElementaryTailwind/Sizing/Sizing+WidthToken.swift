import Elementary

/// Controls the CSS `width` property.
public enum TWTWidth: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case auto
    case full
    case screen
    case min
    case max
    case fit
    case container(String)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "w-\(twFormat(n))"
        case .fraction(let f): "w-\(f)"
        case .auto: "w-auto"
        case .full: "w-full"
        case .screen: "w-screen"
        case .min: "w-min"
        case .max: "w-max"
        case .fit: "w-fit"
        case .container(let s): "w-\(s)"
        case .arbitrary(let v): "w-[\(v)]"
        }
    }
}

/// Controls the CSS `min-width` property.
public enum TWTMinWidth: TWToken, Sendable, Equatable {
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

/// Controls the CSS `max-width` property.
public enum TWTMaxWidth: TWToken, Sendable, Equatable {
    case none
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
    case prose
    case screen(String)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "max-w-none"
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
        case .prose: "max-w-prose"
        case .screen(let s): "max-w-screen-\(s)"
        case .arbitrary(let v): "max-w-[\(v)]"
        }
    }
}
