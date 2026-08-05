import Elementary

// MARK: - BoxShadow

/// Controls the CSS `box-shadow` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTBoxShadow: TWToken, Sendable, Equatable {
    case xxs
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
        case .xxs: "shadow-2xs"
        case .xs: "shadow-xs"
        case .sm: "shadow-sm"
        case .md: "shadow-md"
        case .lg: "shadow-lg"
        case .xl: "shadow-xl"
        case .xxl: "shadow-2xl"
        case .none: "shadow-none"
        case .arbitrary(let v): "shadow-[\(v)]"
        }
    }
}

// MARK: - InsetShadow

/// Controls the CSS `inset box-shadow` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTInsetShadow: TWToken, Sendable, Equatable {
    case xxs
    case xs
    case sm
    case none
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .xxs: "inset-shadow-2xs"
        case .xs: "inset-shadow-xs"
        case .sm: "inset-shadow-sm"
        case .none: "inset-shadow-none"
        case .arbitrary(let v): "inset-shadow-[\(v)]"
        }
    }
}

// MARK: - BoxShadowColor

/// Controls the CSS box shadow color.
public struct TWTBoxShadowColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "shadow-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "shadow-\(color.rawValue)"
        }
    }
}

// MARK: - Opacity

/// Controls the CSS `opacity` property.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTOpacity: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "opacity-\(n)"
        case .arbitrary(let v): "opacity-[\(v)]"
        }
    }
}

// MARK: - MixBlendMode

/// Controls the CSS `mix-blend-mode` property.
public enum TWMixBlendMode: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "mix-blend-normal"
    case multiply = "mix-blend-multiply"
    case screen = "mix-blend-screen"
    case overlay = "mix-blend-overlay"
    case darken = "mix-blend-darken"
    case lighten = "mix-blend-lighten"
    case colorDodge = "mix-blend-color-dodge"
    case colorBurn = "mix-blend-color-burn"
    case hardLight = "mix-blend-hard-light"
    case softLight = "mix-blend-soft-light"
    case difference = "mix-blend-difference"
    case exclusion = "mix-blend-exclusion"
    case hue = "mix-blend-hue"
    case saturation = "mix-blend-saturation"
    case color = "mix-blend-color"
    case luminosity = "mix-blend-luminosity"
    case plusLighter = "mix-blend-plus-lighter"
}

// MARK: - BackgroundBlendMode

/// Controls the CSS `background-blend-mode` property.
public enum TWTBackgroundBlendMode: String, TWToken, Sendable, Equatable, CaseIterable {
    case normal = "bg-blend-normal"
    case multiply = "bg-blend-multiply"
    case screen = "bg-blend-screen"
    case overlay = "bg-blend-overlay"
    case darken = "bg-blend-darken"
    case lighten = "bg-blend-lighten"
    case colorDodge = "bg-blend-color-dodge"
    case colorBurn = "bg-blend-color-burn"
    case hardLight = "bg-blend-hard-light"
    case softLight = "bg-blend-soft-light"
    case difference = "bg-blend-difference"
    case exclusion = "bg-blend-exclusion"
    case hue = "bg-blend-hue"
    case saturation = "bg-blend-saturation"
    case color = "bg-blend-color"
    case luminosity = "bg-blend-luminosity"
}
