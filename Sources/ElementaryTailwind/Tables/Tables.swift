import Elementary

extension MarkupAttribute {
    /// Sets the CSS `border-collapse` property.
    public static func borderCollapse(_ value: TWTBorderCollapse) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `border-spacing` property.
    public static func borderSpacing(_ value: TWTBorderSpacing) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `table-layout` property.
    public static func tableLayout(_ value: TWTTableLayout) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `caption-side` property.
    public static func captionSide(_ value: TWTCaptionSide) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
