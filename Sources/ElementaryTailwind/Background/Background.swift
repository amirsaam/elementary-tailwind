import Elementary

extension MarkupAttribute {
    /// Sets the CSS `background-color` property.
    public static func backgroundColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTBackgroundColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `background-attachment` property.
    public static func backgroundAttachment(_ value: TWTBackgroundAttachment) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `background-clip` property.
    public static func backgroundClip(_ value: TWTBackgroundClip) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `background-origin` property.
    public static func backgroundOrigin(_ value: TWTBackgroundOrigin) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `background-repeat` property.
    public static func backgroundRepeat(_ value: TWTBackgroundRepeat) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `background-size` property.
    public static func backgroundSize(_ value: TWTBackgroundSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `background-position` property.
    public static func backgroundPosition(_ value: TWTBackgroundPosition) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the gradient direction.
    public static func gradientTo(_ value: TWTGradientTo) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the `from-*` gradient stop color.
    public static func gradientFrom(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTGradientFrom(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the `via-*` gradient stop color.
    public static func gradientVia(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTGradientVia(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the `to-*` gradient stop color.
    public static func gradientToColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTGradientToColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
