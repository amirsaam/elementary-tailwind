import Elementary

extension MarkupAttribute {
    /// Sets the CSS `padding` property.
    public static func padding(_ value: TWTPadding) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `padding-inline` property (left + right).
    public static func paddingX(_ value: TWTPaddingX) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `padding-block` property (top + bottom).
    public static func paddingY(_ value: TWTPaddingY) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `padding-top` property.
    public static func paddingTop(_ value: TWTPaddingTop) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `padding-bottom` property.
    public static func paddingBottom(_ value: TWTPaddingBottom) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `margin` property.
    public static func margin(_ value: TWTMargin) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `margin-inline` property (left + right).
    public static func marginX(_ value: TWTMarginX) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `margin-block` property (top + bottom).
    public static func marginY(_ value: TWTMarginY) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `space-x` property.
    public static func spaceX(_ value: TWTSpaceX) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `space-y` property.
    public static func spaceY(_ value: TWTSpaceY) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
