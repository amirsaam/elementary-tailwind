import Elementary

extension MarkupAttribute {
    /// Sets the CSS `border-width` property.
    public static func borderWidth(_ value: TWTBorderWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `border-color` property.
    public static func borderColor(_ color: TWColor, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTBorderColor(color).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `border-style` property.
    public static func borderStyle(_ value: TWTBorderStyle, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `border-radius` property.
    public static func borderRadius(_ value: TWTBorderRadius, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `border-radius` property on a specific corner or side.
    public static func borderRadius(
        _ value: TWTBorderRadiusDirectional,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `ring-width` property.
    public static func ringWidth(_ value: TWRingWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `ring-color` property.
    public static func ringColor(_ color: TWColor, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWRingColor(color).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `ring-offset-width` property.
    public static func ringOffsetWidth(
        _ value: TWRingOffsetWidth,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `ring-offset-color` property.
    public static func ringOffsetColor(_ color: TWColor, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWRingOffsetColor(color).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `outline-width` property.
    public static func outlineWidth(_ value: TWTOutlineWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `outline-style` property.
    public static func outlineStyle(_ value: TWTOutlineStyle, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `outline-color` property.
    public static func outlineColor(_ color: TWColor, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTOutlineColor(color).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `outline-offset` property.
    public static func outlineOffset(_ value: TWTOutlineOffset, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
