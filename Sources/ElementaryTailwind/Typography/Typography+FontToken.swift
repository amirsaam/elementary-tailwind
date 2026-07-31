import Elementary

/// Controls the CSS `font-family` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `font-[Open_Sans]`).
public enum TWTFontFamily: TWToken, Sendable, Equatable {
    case sans
    case serif
    case mono
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .sans: "font-sans"
        case .serif: "font-serif"
        case .mono: "font-mono"
        case .arbitrary(let v): "font-[\(v)]"
        }
    }
}

/// Controls the CSS `font-size` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `text-[14px]`).
public enum TWTFontSize: TWToken, Sendable, Equatable {
    case xs
    case sm
    case base
    case lg
    case xl
    case xxl
    case xxxl
    case fourxl
    case fivexl
    case sixxl
    case sevenxl
    case eightxl
    case ninexl
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .xs: "text-xs"
        case .sm: "text-sm"
        case .base: "text-base"
        case .lg: "text-lg"
        case .xl: "text-xl"
        case .xxl: "text-2xl"
        case .xxxl: "text-3xl"
        case .fourxl: "text-4xl"
        case .fivexl: "text-5xl"
        case .sixxl: "text-6xl"
        case .sevenxl: "text-7xl"
        case .eightxl: "text-8xl"
        case .ninexl: "text-9xl"
        case .arbitrary(let v): "text-[\(v)]"
        }
    }
}

/// Controls the CSS `font-weight` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `font-[1000]`).
public enum TWTFontWeight: TWToken, Sendable, Equatable {
    case thin
    case extralight
    case light
    case normal
    case medium
    case semibold
    case bold
    case extrabold
    case black
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .thin: "font-thin"
        case .extralight: "font-extralight"
        case .light: "font-light"
        case .normal: "font-normal"
        case .medium: "font-medium"
        case .semibold: "font-semibold"
        case .bold: "font-bold"
        case .extrabold: "font-extrabold"
        case .black: "font-black"
        case .arbitrary(let v): "font-[\(v)]"
        }
    }
}

/// Controls the CSS `font-feature-settings` property.
public enum TWTFontFeatureSettings: TWToken, Sendable, Equatable {
    case normal
    case feature(String)

    public var rawValue: String {
        switch self {
        case .normal: "font-feature-normal"
        case .feature(let value): "font-feature-\(value)"
        }
    }
}
