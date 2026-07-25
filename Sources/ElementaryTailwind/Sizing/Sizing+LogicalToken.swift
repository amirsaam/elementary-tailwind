import Elementary

/// Controls the CSS `inline-size` property.
public enum TWTInlineSize: TWToken, Sendable, Equatable {
    case value(Int)
    case auto
    case half
    case third
    case quarter
    case full

    public var rawValue: String {
        switch self {
        case .value(let n): "w-\(n)"
        case .auto: "w-auto"
        case .half: "w-1/2"
        case .third: "w-1/3"
        case .quarter: "w-1/4"
        case .full: "w-full"
        }
    }
}

/// Controls the CSS `min-inline-size` property.
public enum TWTMinInlineSize: TWToken, Sendable, Equatable {
    case value(Int)
    case full

    public var rawValue: String {
        switch self {
        case .value(let n): "min-w-\(n)"
        case .full: "min-w-full"
        }
    }
}

/// Controls the CSS `max-inline-size` property.
public enum TWTMaxInlineSize: TWToken, Sendable, Equatable {
    case value(Int)
    case full
    case min
    case max
    case fit

    public var rawValue: String {
        switch self {
        case .value(let n): "max-w-\(n)"
        case .full: "max-w-full"
        case .min: "max-w-min"
        case .max: "max-w-max"
        case .fit: "max-w-fit"
        }
    }
}

/// Controls the CSS `block-size` property.
public enum TWTBlockSize: TWToken, Sendable, Equatable {
    case value(Int)
    case auto
    case half
    case third
    case quarter
    case full

    public var rawValue: String {
        switch self {
        case .value(let n): "h-\(n)"
        case .auto: "h-auto"
        case .half: "h-1/2"
        case .third: "h-1/3"
        case .quarter: "h-1/4"
        case .full: "h-full"
        }
    }
}

/// Controls the CSS `min-block-size` property.
public enum TWTMinBlockSize: TWToken, Sendable, Equatable {
    case value(Int)
    case full

    public var rawValue: String {
        switch self {
        case .value(let n): "min-h-\(n)"
        case .full: "min-h-full"
        }
    }
}

/// Controls the CSS `max-block-size` property.
public enum TWTMaxBlockSize: TWToken, Sendable, Equatable {
    case value(Int)
    case full
    case screen
    case min
    case max
    case fit

    public var rawValue: String {
        switch self {
        case .value(let n): "max-h-\(n)"
        case .full: "max-h-full"
        case .screen: "max-h-screen"
        case .min: "max-h-min"
        case .max: "max-h-max"
        case .fit: "max-h-fit"
        }
    }
}
