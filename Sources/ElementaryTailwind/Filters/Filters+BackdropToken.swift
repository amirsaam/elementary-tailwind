import Elementary

// MARK: - BackdropBrightness

/// Controls the CSS `backdrop-filter: brightness()` property.
public enum TWTBackdropBrightness: TWToken, Sendable, Equatable {
    case value(Int)
    case percent(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-brightness-\(n)"
        case .percent(let n): "backdrop-brightness-\(n)%"
        }
    }
}

// MARK: - BackdropContrast

/// Controls the CSS `backdrop-filter: contrast()` property.
public enum TWTBackdropContrast: TWToken, Sendable, Equatable {
    case value(Int)
    case percent(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-contrast-\(n)"
        case .percent(let n): "backdrop-contrast-\(n)%"
        }
    }
}

// MARK: - BackdropGrayscale

/// Controls the CSS `backdrop-filter: grayscale()` property.
public enum TWTBackdropGrayscale: TWToken, Sendable, Equatable {
    case value(Int)
    case percent(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-grayscale-\(n)"
        case .percent(let n): "backdrop-grayscale-\(n)%"
        }
    }
}

// MARK: - BackdropHueRotate

/// Controls the CSS `backdrop-filter: hue-rotate()` property.
public enum TWTBackdropHueRotate: TWToken, Sendable, Equatable {
    case degrees(Int)

    public var rawValue: String {
        switch self {
        case .degrees(let n): "backdrop-hue-rotate-\(n)"
        }
    }
}

// MARK: - BackdropInvert

/// Controls the CSS `backdrop-filter: invert()` property.
public enum TWTBackdropInvert: TWToken, Sendable, Equatable {
    case value(Int)
    case percent(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-invert-\(n)"
        case .percent(let n): "backdrop-invert-\(n)%"
        }
    }
}

// MARK: - BackdropOpacity

/// Controls the CSS `backdrop-filter: opacity()` property.
public enum TWTBackdropOpacity: TWToken, Sendable, Equatable {
    case value(Int)
    case percent(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-opacity-\(n)"
        case .percent(let n): "backdrop-opacity-\(n)%"
        }
    }
}

// MARK: - BackdropSaturate

/// Controls the CSS `backdrop-filter: saturate()` property.
public enum TWTBackdropSaturate: TWToken, Sendable, Equatable {
    case value(Int)
    case percent(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-saturate-\(n)"
        case .percent(let n): "backdrop-saturate-\(n)%"
        }
    }
}

// MARK: - BackdropSepia

/// Controls the CSS `backdrop-filter: sepia()` property.
public enum TWTBackdropSepia: TWToken, Sendable, Equatable {
    case value(Int)
    case percent(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-sepia-\(n)"
        case .percent(let n): "backdrop-sepia-\(n)%"
        }
    }
}
