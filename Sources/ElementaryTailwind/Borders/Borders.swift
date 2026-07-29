import Elementary

extension MarkupAttribute {
    /// Sets the width of the element's border.
    /// Produces `border-*` classes (e.g. `border`, `border-2`, `border-4`, `border-0`).
    public static func borderWidth(_ value: TWTBorderWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the color of the element's border.
    /// Produces `border-*` classes with color (e.g. `border-blue-500`, `border-red-600/50`).
    public static func borderColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTBorderColor(color, opacity: opacity).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the style of the element's border.
    /// Produces `border-*` classes (e.g. `border-solid`, `border-dashed`, `border-dotted`, `border-none`).
    public static func borderStyle(_ value: TWTBorderStyle, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Rounds the corners of the element.
    /// Produces `rounded-*` classes (e.g. `rounded-sm`, `rounded-md`, `rounded-lg`, `rounded-full`).
    public static func borderRadius(_ value: TWTBorderRadius, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Rounds a specific corner or side of the element.
    /// Produces directional `rounded-*` classes (e.g. `rounded-t-lg`, `rounded-l-full`, `rounded-br-md`).
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

    /// Sets the width of the ring outline around the element.
    /// Produces `ring-*` classes (e.g. `ring`, `ring-2`, `ring-4`, `ring-0`).
    public static func ringWidth(_ value: TWRingWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the color of the ring outline around the element.
    /// Produces `ring-*` classes with color (e.g. `ring-blue-500`, `ring-red-600/50`).
    public static func ringColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWRingColor(color, opacity: opacity).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the width of the ring offset gap.
    /// Produces `ring-offset-*` classes (e.g. `ring-offset-2`, `ring-offset-4`).
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

    /// Sets the color of the ring offset gap.
    /// Produces `ring-offset-*` classes with color (e.g. `ring-offset-blue-500`, `ring-offset-red-600/50`).
    public static func ringOffsetColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWRingOffsetColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the width of the element's outline.
    /// Produces `outline-*` classes (e.g. `outline`, `outline-2`, `outline-4`, `outline-0`).
    public static func outlineWidth(_ value: TWTOutlineWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the style of the element's outline.
    /// Produces `outline-*` classes (e.g. `outline-solid`, `outline-dashed`, `outline-dotted`, `outline-hidden`).
    public static func outlineStyle(_ value: TWTOutlineStyle, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the color of the element's outline.
    /// Produces `outline-*` classes with color (e.g. `outline-blue-500`, `outline-red-600/50`).
    public static func outlineColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTOutlineColor(color, opacity: opacity).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the distance between the outline and the element's border.
    /// Produces `outline-offset-*` classes (e.g. `outline-offset-2`, `outline-offset-4`).
    public static func outlineOffset(_ value: TWTOutlineOffset, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
