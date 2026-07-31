import Elementary

// MARK: - BackdropBrightness

/// Controls the CSS `backdrop-filter: brightness()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropBrightness: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-brightness-\(n)"
        case .arbitrary(let v): "backdrop-brightness-[\(v)]"
        }
    }
}

// MARK: - BackdropContrast

/// Controls the CSS `backdrop-filter: contrast()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropContrast: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-contrast-\(n)"
        case .arbitrary(let v): "backdrop-contrast-[\(v)]"
        }
    }
}

// MARK: - BackdropGrayscale

/// Controls the CSS `backdrop-filter: grayscale()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropGrayscale: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-grayscale-\(n)"
        case .arbitrary(let v): "backdrop-grayscale-[\(v)]"
        }
    }
}

// MARK: - BackdropHueRotate

/// Controls the CSS `backdrop-filter: hue-rotate()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropHueRotate: TWToken, Sendable, Equatable {
    case degrees(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .degrees(let n): "backdrop-hue-rotate-\(n)"
        case .arbitrary(let v): "backdrop-hue-rotate-[\(v)]"
        }
    }
}

// MARK: - BackdropInvert

/// Controls the CSS `backdrop-filter: invert()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropInvert: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-invert-\(n)"
        case .arbitrary(let v): "backdrop-invert-[\(v)]"
        }
    }
}

// MARK: - BackdropOpacity

/// Controls the CSS `backdrop-filter: opacity()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropOpacity: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-opacity-\(n)"
        case .arbitrary(let v): "backdrop-opacity-[\(v)]"
        }
    }
}

// MARK: - BackdropSaturate

/// Controls the CSS `backdrop-filter: saturate()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropSaturate: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-saturate-\(n)"
        case .arbitrary(let v): "backdrop-saturate-[\(v)]"
        }
    }
}

// MARK: - BackdropSepia

/// Controls the CSS `backdrop-filter: sepia()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropSepia: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "backdrop-sepia-\(n)"
        case .arbitrary(let v): "backdrop-sepia-[\(v)]"
        }
    }
}
