import Elementary

extension MarkupAttribute {
    /// Sets the CSS `fill` property for SVG elements.
    public static func fill(_ color: TWColor) -> Self {
        .init(name: "class", value: TWTFill(color).rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `fill: none` for SVG elements.
    public static func fillNone() -> Self {
        .init(
            name: "class",
            value: TWTFillNone.none.rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `stroke` property for SVG elements.
    public static func stroke(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTStroke(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `stroke: none` for SVG elements.
    public static func strokeNone() -> Self {
        .init(
            name: "class",
            value: TWTStrokeNone.none.rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `stroke-width` property for SVG elements.
    public static func strokeWidth(_ value: TWTStrokeWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
