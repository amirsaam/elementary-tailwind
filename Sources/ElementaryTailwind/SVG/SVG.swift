import Elementary

extension MarkupAttribute {
    /// Sets the CSS `fill` property for SVG elements.
    public static func fill(_ color: TWColor, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTFill(color).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `fill: none` for SVG elements.
    public static func fillNone(variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTFillNone.none.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `stroke` property for SVG elements.
    public static func stroke(_ color: TWColor, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTStroke(color).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `stroke: none` for SVG elements.
    public static func strokeNone(variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTStrokeNone.none.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `stroke-width` property for SVG elements.
    public static func strokeWidth(_ value: TWTStrokeWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
