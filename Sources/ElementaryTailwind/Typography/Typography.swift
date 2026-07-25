import Elementary

extension MarkupAttribute {
    /// Sets the CSS `font-size` property.
    public static func fontSize(_ value: TWTFontSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `font-weight` property.
    public static func fontWeight(_ value: TWTFontWeight) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `font-family` property.
    public static func fontFamily(_ value: TWTFontFamily) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-align` property.
    public static func textAlign(_ value: TWTTextAlign) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `color` property.
    public static func textColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTTextColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `text-decoration` property.
    public static func textDecoration(_ value: TWTTextDecoration) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-transform` property.
    public static func textTransform(_ value: TWTTextTransform) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-overflow` property.
    public static func textOverflow(_ value: TWTTextOverflow) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-wrap` property.
    public static func textWrap(_ value: TWTTextWrap) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `vertical-align` property.
    public static func verticalAlign(_ value: TWTVerticalAlign) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `white-space` property.
    public static func whitespace(_ value: TWTWhitespace) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `word-break` property.
    public static func wordBreak(_ value: TWTWordBreak) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `list-style-type` property.
    public static func listStyle(_ value: TWTListStyle) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `list-style-position` property.
    public static func listStylePosition(_ value: TWTListStylePosition) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `content` property for pseudo-elements.
    public static func content(_ value: TWTContent) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `font-style` property.
    public static func fontStyle(_ value: TWTFontStyle) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `font-smoothing` property.
    public static func fontSmoothing(_ value: TWTFontSmoothing) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `font-stretch` property.
    public static func fontStretch(_ value: TWTFontStretch) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `font-variant-numeric` property.
    public static func fontVariantNumeric(_ value: TWTFontVariantNumeric) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `letter-spacing` property.
    public static func letterSpacing(_ value: TWTLetterSpacing) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `line-height` property.
    public static func lineHeight(_ value: TWTLineHeight) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `line-clamp` property.
    public static func lineClamp(_ value: TWTLineClamp) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-indent` property.
    public static func textIndent(_ value: TWTTextIndent) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-decoration-color` property.
    public static func textDecorationColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTTextColorDecoration(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `text-decoration-style` property.
    public static func textDecorationStyle(_ value: TWTTextDecorationStyle) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-decoration-thickness` property.
    public static func textDecorationThickness(_ value: TWTTextDecorationThickness) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `text-underline-offset` property.
    public static func underlineOffset(_ value: TWTTextUnderlineOffset) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `tab-size` property.
    public static func tabSize(_ value: TWTTabSize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `hyphens` property.
    public static func hyphens(_ value: TWTHyphens) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `list-style-image` property.
    public static func listStyleImage(_ value: TWTListStyleImage) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
