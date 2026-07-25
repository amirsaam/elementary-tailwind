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
}
