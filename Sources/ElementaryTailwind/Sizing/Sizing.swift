import Elementary

extension MarkupAttribute {
    /// Sets the CSS `width` property.
    public static func width(_ value: TWTWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `min-width` property.
    public static func minWidth(_ value: TWTMinWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `max-width` property.
    public static func maxWidth(_ value: TWTMaxWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `height` property.
    public static func height(_ value: TWTHeight) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `min-height` property.
    public static func minHeight(_ value: TWTMinHeight) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `max-height` property.
    public static func maxHeight(_ value: TWTMaxHeight) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `inline-size` property.
    public static func inlineSize(_ value: TWTInlineSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `min-inline-size` property.
    public static func minInlineSize(_ value: TWTMinInlineSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `max-inline-size` property.
    public static func maxInlineSize(_ value: TWTMaxInlineSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `block-size` property.
    public static func blockSize(_ value: TWTBlockSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `min-block-size` property.
    public static func minBlockSize(_ value: TWTMinBlockSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `max-block-size` property.
    public static func maxBlockSize(_ value: TWTMaxBlockSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
