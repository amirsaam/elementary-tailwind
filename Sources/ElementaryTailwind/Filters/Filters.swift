import Elementary

extension MarkupAttribute {
    /// Sets the CSS `filter: blur()` property.
    public static func blur(_ value: TWTBlur) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `filter: brightness()` property.
    public static func brightness(_ value: TWTBrightness) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `filter: contrast()` property.
    public static func contrast(_ value: TWTContrast) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `filter: drop-shadow()` property.
    public static func dropShadow(_ value: TWTDropShadow) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `filter: grayscale()` property.
    public static func grayscale(_ value: TWTGrayscale) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `filter: hue-rotate()` property.
    public static func hueRotate(_ value: TWTHueRotate) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `filter: invert()` property.
    public static func invert(_ value: TWTInvert) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `filter: saturate()` property.
    public static func saturate(_ value: TWTSaturate) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `filter: sepia()` property.
    public static func sepia(_ value: TWTSepia) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: blur()` property.
    public static func backdropBlur(_ value: TWTBackdropBlur) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: brightness()` property.
    public static func backdropBrightness(_ value: TWTBackdropBrightness) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: contrast()` property.
    public static func backdropContrast(_ value: TWTBackdropContrast) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: grayscale()` property.
    public static func backdropGrayscale(_ value: TWTBackdropGrayscale) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: hue-rotate()` property.
    public static func backdropHueRotate(_ value: TWTBackdropHueRotate) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: invert()` property.
    public static func backdropInvert(_ value: TWTBackdropInvert) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: opacity()` property.
    public static func backdropOpacity(_ value: TWTBackdropOpacity) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: saturate()` property.
    public static func backdropSaturate(_ value: TWTBackdropSaturate) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backdrop-filter: sepia()` property.
    public static func backdropSepia(_ value: TWTBackdropSepia) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
