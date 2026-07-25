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
