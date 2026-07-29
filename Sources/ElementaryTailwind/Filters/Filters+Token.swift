import Elementary

// MARK: - Blur

/// Controls the CSS `filter: blur()` property.
public enum TWTBlur: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "blur-none"
    case xs = "blur-xs"
    case sm = "blur-sm"
    case md = "blur-md"
    case lg = "blur-lg"
    case xl = "blur-xl"
    case xxl = "blur-2xl"
    case xxxl = "blur-3xl"
}

// MARK: - Brightness

/// Controls the CSS `filter: brightness()` property.
public enum TWTBrightness: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "brightness-\(n)"
        }
    }
}

// MARK: - Contrast

/// Controls the CSS `filter: contrast()` property.
public enum TWTContrast: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "contrast-\(n)"
        }
    }
}

// MARK: - DropShadow

/// Controls the CSS `filter: drop-shadow()` property.
public enum TWTDropShadow: String, TWToken, Sendable, Equatable, CaseIterable {
    case xs = "drop-shadow-xs"
    case sm = "drop-shadow-sm"
    case md = "drop-shadow-md"
    case lg = "drop-shadow-lg"
    case xl = "drop-shadow-xl"
    case xxl = "drop-shadow-2xl"
    case none = "drop-shadow-none"
}

// MARK: - Grayscale

/// Controls the CSS `filter: grayscale()` property.
public enum TWTGrayscale: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "grayscale-\(n)"
        }
    }
}

// MARK: - HueRotate

/// Controls the CSS `filter: hue-rotate()` property.
public enum TWTHueRotate: TWToken, Sendable, Equatable {
    case degrees(Int)

    public var rawValue: String {
        switch self {
        case .degrees(let n): "hue-rotate-\(n)"
        }
    }
}

// MARK: - Invert

/// Controls the CSS `filter: invert()` property.
public enum TWTInvert: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "invert-\(n)"
        }
    }
}

// MARK: - Saturate

/// Controls the CSS `filter: saturate()` property.
public enum TWTSaturate: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "saturate-\(n)"
        }
    }
}

// MARK: - Sepia

/// Controls the CSS `filter: sepia()` property.
public enum TWTSepia: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "sepia-\(n)"
        }
    }
}

// MARK: - BackdropBlur

/// Controls the CSS `backdrop-filter: blur()` property.
public enum TWTBackdropBlur: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "backdrop-blur-none"
    case xs = "backdrop-blur-xs"
    case sm = "backdrop-blur-sm"
    case md = "backdrop-blur-md"
    case lg = "backdrop-blur-lg"
    case xl = "backdrop-blur-xl"
    case xxl = "backdrop-blur-2xl"
    case xxxl = "backdrop-blur-3xl"
}
