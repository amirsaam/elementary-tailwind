import Elementary

extension MarkupAttribute {
    /// Sets the CSS `border-width` property.
    public static func borderWidth(_ value: TWTBorderWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `border-color` property.
    public static func borderColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTBorderColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `border-style` property.
    public static func borderStyle(_ value: TWTBorderStyle) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `border-radius` property.
    public static func borderRadius(_ value: TWTBorderRadius) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `ring-width` property.
    public static func ringWidth(_ value: TWRingWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `ring-color` property.
    public static func ringColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWRingColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `ring-offset-width` property.
    public static func ringOffsetWidth(_ value: TWRingOffsetWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `ring-offset-color` property.
    public static func ringOffsetColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWRingOffsetColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `outline-width` property.
    public static func outlineWidth(_ value: TWTOutlineWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `outline-style` property.
    public static func outlineStyle(_ value: TWTOutlineStyle) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `outline-color` property.
    public static func outlineColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTOutlineColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `outline-offset` property.
    public static func outlineOffset(_ value: TWTOutlineOffset) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
