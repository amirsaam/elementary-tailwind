import Elementary

extension MarkupAttribute {
    /// Sets the size of the text.
    /// Produces `text-*` classes (e.g. `text-sm`, `text-lg`, `text-2xl`, `text-base`).
    public static func fontSize(_ value: TWTFontSize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the thickness or boldness of the text.
    /// Produces `font-*` classes (e.g. `font-bold`, `font-medium`, `font-light`, `font-thin`).
    public static func fontWeight(_ value: TWTFontWeight, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the typeface used for the text.
    /// Produces `font-*` classes (e.g. `font-sans`, `font-serif`, `font-mono`).
    public static func fontFamily(_ value: TWTFontFamily, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls OpenType font features like ligatures and tabular figures.
    /// Produces `font-*` classes (e.g. `font-ligatures`, `font-tabular-nums`, `font-proportional-nums`).
    public static func fontFeatureSettings(
        _ value: TWTFontFeatureSettings,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the horizontal alignment of the text.
    /// Produces `text-*` classes (e.g. `text-left`, `text-center`, `text-right`, `text-justify`).
    public static func textAlign(_ value: TWTTextAlign, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the color of the text.
    /// Produces `text-*` classes with color (e.g. `text-blue-500`, `text-red-600/50`, `text-gray-900`).
    public static func textColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTTextColor(color, opacity: opacity).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Adds an underline, overline, or line-through to the text.
    /// Produces `underline`, `overline`, `line-through`, or `no-underline` classes.
    public static func textDecoration(
        _ value: TWTTextDecoration,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Transforms text to uppercase, lowercase, or capitalize.
    /// Produces `uppercase`, `lowercase`, `capitalize`, or `normal-case` classes.
    public static func textTransform(_ value: TWTTextTransform, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls how overflowing text is handled.
    /// Produces `truncate`, `text-ellipsis`, or `text-clip` classes.
    public static func textOverflow(_ value: TWTTextOverflow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls how text wraps within its container.
    /// Produces `text-wrap`, `text-nowrap`, `text-balance`, or `text-pretty` classes.
    public static func textWrap(_ value: TWTTextWrap, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the vertical alignment of inline or table cell content.
    /// Produces `align-*` classes (e.g. `align-baseline`, `align-top`, `align-middle`, `align-bottom`).
    public static func verticalAlign(_ value: TWTVerticalAlign, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether white space inside an element is collapsed or preserved.
    /// Produces `whitespace-*` classes (e.g. `whitespace-normal`, `whitespace-nowrap`, `whitespace-pre`).
    public static func whitespace(_ value: TWTWhitespace, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls how text wraps when it exceeds the container width.
    /// Produces `break-*` classes (e.g. `break-normal`, `break-words`, `break-all`, `break-keep`).
    public static func wordBreak(_ value: TWTWordBreak, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the marker style for list items.
    /// Produces `list-*` classes (e.g. `list-none`, `list-disc`, `list-decimal`).
    public static func listStyle(_ value: TWTListStyleType, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether list markers appear inside or outside the list box.
    /// Produces `list-inside` or `list-outside` classes.
    public static func listStylePosition(
        _ value: TWTListStylePosition,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the content for generated pseudo-elements.
    /// Produces `content-*` classes (e.g. `content-none`).
    public static func content(_ value: TWTContent, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether the text is normal, italic, or oblique.
    /// Produces `italic`, `not-italic` classes.
    public static func fontStyle(_ value: TWTFontStyle, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls font smoothing (antialiased or subpixel-antialiased).
    /// Produces `antialiased` or `subpixel-antialiased` classes.
    public static func fontSmoothing(_ value: TWTFontSmoothing, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how narrow or wide the glyphs of the text are.
    /// Produces `font-stretch-*` classes (e.g. `font-stretch-condensed`, `font-stretch-expanded`).
    public static func fontStretch(_ value: TWTFontStretch, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls the rendering of numeric characters.
    /// Produces font variant classes (e.g. `ordinal`, `slashed-zero`, `lining-nums`, `tabular-nums`).
    public static func fontVariantNumeric(
        _ value: TWTFontVariantNumeric,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the spacing between characters.
    /// Produces `tracking-*` classes (e.g. `tracking-tight`, `tracking-wide`, `tracking-normal`).
    public static func letterSpacing(_ value: TWTLetterSpacing, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the height of each line of text.
    /// Produces `leading-*` classes (e.g. `leading-6`, `leading-relaxed`, `leading-none`, `leading-tight`).
    public static func lineHeight(_ value: TWTLineHeight, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Truncates multi-line text to a maximum number of lines.
    /// Produces `line-clamp-*` classes (e.g. `line-clamp-2`, `line-clamp-3`, `line-clamp-none`).
    public static func lineClamp(_ value: TWTLineClamp, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the indentation of the first line of text.
    /// Produces `indent-*` classes (e.g. `indent-4`, `indent-8`, `indent-px`).
    public static func textIndent(_ value: TWTTextIndent, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the color of the text decoration line.
    /// Produces `decoration-*` classes with color (e.g. `decoration-blue-500`, `decoration-red-600/50`).
    public static func textDecorationColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTTextColorDecoration(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the style of the text decoration line.
    /// Produces `decoration-*` classes (e.g. `decoration-solid`, `decoration-dotted`, `decoration-wavy`).
    public static func textDecorationStyle(
        _ value: TWTTextDecorationStyle,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the thickness of the text decoration line.
    /// Produces `decoration-*` classes (e.g. `decoration-auto`, `decoration-2`, `decoration-4`).
    public static func textDecorationThickness(
        _ value: TWTTextDecorationThickness,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the distance between the text underline and the text baseline.
    /// Produces `underline-offset-*` classes (e.g. `underline-offset-2`, `underline-offset-4`, `underline-offset-auto`).
    public static func underlineOffset(
        _ value: TWTTextUnderlineOffset,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the width of tab characters.
    /// Produces `tab-*` classes (e.g. `tab-2`, `tab-4`, `tab-8`).
    public static func tabSize(_ value: TWTTabSize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls whether the browser can break words to prevent overflow.
    /// Produces `hyphens-*` classes (e.g. `hyphens-none`, `hyphens-manual`, `hyphens-auto`).
    public static func hyphens(_ value: TWTHyphens, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets a custom image as the list marker.
    /// Produces `list-image-*` classes (e.g. `list-image-none`).
    public static func listStyleImage(
        _ value: TWTListStyleImage,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
