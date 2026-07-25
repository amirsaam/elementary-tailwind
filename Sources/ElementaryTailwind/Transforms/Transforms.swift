import Elementary

extension MarkupAttribute {
    /// Sets the CSS `scale` property.
    public static func scale(_ value: TWTScale) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `rotate` property.
    public static func rotate(_ value: TWTRotate) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `translate` property.
    public static func translate(_ value: TWTTranslate) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `skew` property.
    public static func skew(_ value: TWTSkew) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `transform-origin` property.
    public static func transformOrigin(_ value: TWTTransformOrigin) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `perspective` property.
    public static func perspective(_ value: TWTPerspective) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `perspective-origin` property.
    public static func perspectiveOrigin(_ value: TWTPerspectiveOrigin) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `backface-visibility` property.
    public static func backfaceVisibility(_ value: TWTBackfaceVisibility) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `transform-style` property.
    public static func transformStyle(_ value: TWTTransformStyle) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `zoom` property.
    public static func zoom(_ value: TWTZoom) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
