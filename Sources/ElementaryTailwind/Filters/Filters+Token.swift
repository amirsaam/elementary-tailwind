import Elementary

// MARK: - Blur

/// Controls the CSS `filter: blur()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBlur: TWToken, Sendable, Equatable {
    case none
    case xs
    case sm
    case md
    case lg
    case xl
    case xxl
    case xxxl
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "blur-none"
        case .xs: "blur-xs"
        case .sm: "blur-sm"
        case .md: "blur-md"
        case .lg: "blur-lg"
        case .xl: "blur-xl"
        case .xxl: "blur-2xl"
        case .xxxl: "blur-3xl"
        case .arbitrary(let v): "blur-[\(v)]"
        }
    }
}

// MARK: - Brightness

/// Controls the CSS `filter: brightness()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBrightness: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "brightness-\(n)"
        case .arbitrary(let v): "brightness-[\(v)]"
        }
    }
}

// MARK: - Contrast

/// Controls the CSS `filter: contrast()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTContrast: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "contrast-\(n)"
        case .arbitrary(let v): "contrast-[\(v)]"
        }
    }
}

// MARK: - DropShadow

/// Controls the CSS `filter: drop-shadow()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTDropShadow: TWToken, Sendable, Equatable {
    case xs
    case sm
    case md
    case lg
    case xl
    case xxl
    case none
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .xs: "drop-shadow-xs"
        case .sm: "drop-shadow-sm"
        case .md: "drop-shadow-md"
        case .lg: "drop-shadow-lg"
        case .xl: "drop-shadow-xl"
        case .xxl: "drop-shadow-2xl"
        case .none: "drop-shadow-none"
        case .arbitrary(let v): "drop-shadow-[\(v)]"
        }
    }
}

// MARK: - Grayscale

/// Controls the CSS `filter: grayscale()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTGrayscale: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "grayscale-\(n)"
        case .arbitrary(let v): "grayscale-[\(v)]"
        }
    }
}

// MARK: - HueRotate

/// Controls the CSS `filter: hue-rotate()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTHueRotate: TWToken, Sendable, Equatable {
    case degrees(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .degrees(let n): "hue-rotate-\(n)"
        case .arbitrary(let v): "hue-rotate-[\(v)]"
        }
    }
}

// MARK: - Invert

/// Controls the CSS `filter: invert()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTInvert: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "invert-\(n)"
        case .arbitrary(let v): "invert-[\(v)]"
        }
    }
}

// MARK: - Saturate

/// Controls the CSS `filter: saturate()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTSaturate: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "saturate-\(n)"
        case .arbitrary(let v): "saturate-[\(v)]"
        }
    }
}

// MARK: - Sepia

/// Controls the CSS `filter: sepia()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTSepia: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "sepia-\(n)"
        case .arbitrary(let v): "sepia-[\(v)]"
        }
    }
}

// MARK: - BackdropBlur

/// Controls the CSS `backdrop-filter: blur()` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBackdropBlur: TWToken, Sendable, Equatable {
    case none
    case xs
    case sm
    case md
    case lg
    case xl
    case xxl
    case xxxl
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "backdrop-blur-none"
        case .xs: "backdrop-blur-xs"
        case .sm: "backdrop-blur-sm"
        case .md: "backdrop-blur-md"
        case .lg: "backdrop-blur-lg"
        case .xl: "backdrop-blur-xl"
        case .xxl: "backdrop-blur-2xl"
        case .xxxl: "backdrop-blur-3xl"
        case .arbitrary(let v): "backdrop-blur-[\(v)]"
        }
    }
}
