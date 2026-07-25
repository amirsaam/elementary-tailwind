import Elementary

extension MarkupAttribute {
    /// Sets the CSS `box-shadow` property.
    public static func boxShadow(_ value: TWTBoxShadow) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS box shadow color.
    public static func boxShadowColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTBoxShadowColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `opacity` property.
    public static func opacity(_ value: TWTOpacity) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mix-blend-mode` property.
    public static func mixBlendMode(_ value: TWMixBlendMode) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `background-blend-mode` property.
    public static func backgroundBlendMode(_ value: TWTBackgroundBlendMode) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-shadow` property.
    public static func textShadow(_ value: TWTTextShadow) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-clip` property.
    public static func maskClip(_ value: TWTMaskClip) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-composite` property.
    public static func maskComposite(_ value: TWTMaskComposite) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-image` property.
    public static func maskImage(_ value: TWTMaskImage) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-mode` property.
    public static func maskMode(_ value: TWTMaskMode) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-origin` property.
    public static func maskOrigin(_ value: TWTMaskOrigin) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-position` property.
    public static func maskPosition(_ value: TWTMaskPosition) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-repeat` property.
    public static func maskRepeat(_ value: TWTMaskRepeat) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-size` property.
    public static func maskSize(_ value: TWTMaskSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `mask-type` property.
    public static func maskType(_ value: TWTMaskType) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
