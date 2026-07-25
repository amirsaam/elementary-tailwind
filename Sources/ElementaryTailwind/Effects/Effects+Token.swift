import Elementary

// MARK: - BoxShadow

/// Controls the CSS `box-shadow` property.
public enum TWTBoxShadow: String, TWToken, Sendable, Equatable, CaseIterable {
    case sm = "shadow-sm"
    case md = "shadow"
    case lg = "shadow-lg"
    case xl = "shadow-xl"
    case xxl = "shadow-2xl"
    case inner = "shadow-inner"
    case none = "shadow-none"
}

// MARK: - BoxShadowColor

/// Controls the CSS box shadow color.
public struct TWTBoxShadowColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor) { rawValue = "shadow-\(color.rawValue)" }
}

// MARK: - Opacity

/// Controls the CSS `opacity` property.
public enum TWTOpacity: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "opacity-\(n)"
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
