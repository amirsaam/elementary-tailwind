import Elementary

/// Controls the CSS `font-family` property.
public enum TWTFontFamily: String, TWToken, Sendable, Equatable, CaseIterable {
    case sans = "font-sans"
    case serif = "font-serif"
    case mono = "font-mono"
}

/// Controls the CSS `font-size` property.
public enum TWTFontSize: String, TWToken, Sendable, Equatable, CaseIterable {
    case xs = "text-xs"
    case sm = "text-sm"
    case base = "text-base"
    case lg = "text-lg"
    case xl = "text-xl"
    case xxl = "text-2xl"
    case xxxl = "text-3xl"
    case fourxl = "text-4xl"
    case fivexl = "text-5xl"
    case sixxl = "text-6xl"
    case sevenxl = "text-7xl"
    case eightxl = "text-8xl"
    case ninexl = "text-9xl"
}

/// Controls the CSS `font-weight` property.
public enum TWTFontWeight: String, TWToken, Sendable, Equatable, CaseIterable {
    case thin = "font-thin"
    case extralight = "font-extralight"
    case light = "font-light"
    case normal = "font-normal"
    case medium = "font-medium"
    case semibold = "font-semibold"
    case bold = "font-bold"
    case extrabold = "font-extrabold"
    case black = "font-black"
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
