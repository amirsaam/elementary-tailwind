import Elementary

/// Controls the CSS `font-style` property.
public enum TWTFontStyle: String, TWToken, Sendable, Equatable, CaseIterable {
    case italic = "italic"
    case normal = "not-italic"
}

/// Controls the CSS `font-smoothing` property.
public enum TWTFontSmoothing: String, TWToken, Sendable, Equatable, CaseIterable {
    case antialiased = "antialiased"
    case subpixelAntialiased = "subpixel-antialiased"
}

/// Controls the CSS `font-stretch` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `font-stretch-[66.66%]`).
public enum TWTFontStretch: TWToken, Sendable, Equatable {
    case ultraCondensed
    case extraCondensed
    case condensed
    case semiCondensed
    case normal
    case semiExpanded
    case expanded
    case extraExpanded
    case ultraExpanded
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .ultraCondensed: "font-stretch-ultra-condensed"
        case .extraCondensed: "font-stretch-extra-condensed"
        case .condensed: "font-stretch-condensed"
        case .semiCondensed: "font-stretch-semi-condensed"
        case .normal: "font-stretch-normal"
        case .semiExpanded: "font-stretch-semi-expanded"
        case .expanded: "font-stretch-expanded"
        case .extraExpanded: "font-stretch-extra-expanded"
        case .ultraExpanded: "font-stretch-ultra-expanded"
        case .arbitrary(let v): "font-stretch-[\(v)]"
        }
    }
}

/// Controls the CSS `font-variant-numeric` property.
public enum TWTFontVariantNumeric: String, TWToken, Sendable, Equatable, CaseIterable {
    case liningNums = "lining-nums"
    case oldstyleNums = "oldstyle-nums"
    case proportionalNums = "proportional-nums"
    case tabularNums = "tabular-nums"
    case diagonalFractions = "diagonal-fractions"
    case stackedFractions = "stacked-fractions"
    case ordinal = "ordinal"
    case slashedZero = "slashed-zero"
}
