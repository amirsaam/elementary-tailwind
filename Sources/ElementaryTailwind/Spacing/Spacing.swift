import Elementary

extension MarkupAttribute {
    /// Sets the padding on all sides of the element.
    /// Produces `p-*` classes (e.g. `p-4`, `p-8`, `p-auto`).
    public static func padding(_ value: TWTPadding, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the horizontal padding (left + right).
    /// Produces `px-*` classes (e.g. `px-4`, `px-8`).
    public static func paddingX(_ value: TWTPaddingX, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the vertical padding (top + bottom).
    /// Produces `py-*` classes (e.g. `py-4`, `py-8`).
    public static func paddingY(_ value: TWTPaddingY, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the top padding.
    /// Produces `pt-*` classes (e.g. `pt-4`, `pt-8`).
    public static func paddingTop(_ value: TWTPaddingTop, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the right padding.
    /// Produces `pr-*` classes (e.g. `pr-4`, `pr-8`).
    public static func paddingRight(
        _ value: TWTPaddingRight,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the bottom padding.
    /// Produces `pb-*` classes (e.g. `pb-4`, `pb-8`).
    public static func paddingBottom(
        _ value: TWTPaddingBottom,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the left padding.
    /// Produces `pl-*` classes (e.g. `pl-4`, `pl-8`).
    public static func paddingLeft(_ value: TWTPaddingLeft, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the margin on all sides of the element.
    /// Produces `m-*` classes (e.g. `m-4`, `-m-4`, `m-auto`).
    public static func margin(
        _ value: TWTMargin,
        negative: Bool = false,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: negative ? "-\(value.rawValue)" : value.rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the horizontal margin (left + right).
    /// Produces `mx-*` classes (e.g. `mx-4`, `-mx-4`, `mx-auto`).
    public static func marginX(
        _ value: TWTMarginX,
        negative: Bool = false,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: negative ? "-\(value.rawValue)" : value.rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the vertical margin (top + bottom).
    /// Produces `my-*` classes (e.g. `my-4`, `-my-4`, `my-auto`).
    public static func marginY(
        _ value: TWTMarginY,
        negative: Bool = false,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: negative ? "-\(value.rawValue)" : value.rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the top margin.
    /// Produces `mt-*` classes (e.g. `mt-4`, `-mt-4`, `mt-auto`).
    public static func marginTop(
        _ value: TWTMarginTop,
        negative: Bool = false,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: negative ? "-\(value.rawValue)" : value.rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the right margin.
    /// Produces `mr-*` classes (e.g. `mr-4`, `-mr-4`, `mr-auto`).
    public static func marginRight(
        _ value: TWTMarginRight,
        negative: Bool = false,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: negative ? "-\(value.rawValue)" : value.rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the bottom margin.
    /// Produces `mb-*` classes (e.g. `mb-4`, `-mb-4`, `mb-auto`).
    public static func marginBottom(
        _ value: TWTMarginBottom,
        negative: Bool = false,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: negative ? "-\(value.rawValue)" : value.rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the left margin.
    /// Produces `ml-*` classes (e.g. `ml-4`, `-ml-4`, `ml-auto`).
    public static func marginLeft(
        _ value: TWTMarginLeft,
        negative: Bool = false,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: negative ? "-\(value.rawValue)" : value.rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the horizontal spacing between child elements.
    /// Produces `space-x-*` classes (e.g. `space-x-4`, `space-x-8`).
    public static func spaceX(_ value: TWTSpaceX, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the vertical spacing between child elements.
    /// Produces `space-y-*` classes (e.g. `space-y-4`, `space-y-8`).
    public static func spaceY(_ value: TWTSpaceY, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
