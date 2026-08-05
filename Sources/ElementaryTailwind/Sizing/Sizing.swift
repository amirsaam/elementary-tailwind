import Elementary

extension MarkupAttribute {
    /// Sets the width of the element.
    /// Produces `w-*` classes (e.g. `w-4`, `w-full`, `w-screen`).
    public static func width(_ value: TWTWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets both the width and height of the element.
    /// Produces `size-*` classes (e.g. `size-4`, `size-full`, `size-fit`).
    public static func size(_ value: TWTSize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the minimum width of the element.
    /// Produces `min-w-*` classes (e.g. `min-w-0`, `min-w-full`, `min-w-fit`).
    public static func minWidth(_ value: TWTMinWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the maximum width of the element.
    /// Produces `max-w-*` classes (e.g. `max-w-md`, `max-w-full`, `max-w-screen`).
    public static func maxWidth(_ value: TWTMaxWidth, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the height of the element.
    /// Produces `h-*` classes (e.g. `h-4`, `h-full`, `h-screen`).
    public static func height(_ value: TWTHeight, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the minimum height of the element.
    /// Produces `min-h-*` classes (e.g. `min-h-0`, `min-h-full`, `min-h-screen`).
    public static func minHeight(_ value: TWTMinHeight, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the maximum height of the element.
    /// Produces `max-h-*` classes (e.g. `max-h-full`, `max-h-screen`, `max-h-fit`).
    public static func maxHeight(_ value: TWTMaxHeight, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the logical inline width of the element (maps to `width` in horizontal writing modes).
    /// Produces `w-*` classes (e.g. `w-4`, `w-full`, `w-auto`).
    public static func inlineSize(_ value: TWTInlineSize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the minimum logical inline width of the element.
    /// Produces `min-w-*` classes (e.g. `min-w-0`, `min-w-full`, `min-w-fit`).
    public static func minInlineSize(_ value: TWTMinInlineSize, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the maximum logical inline width of the element.
    /// Produces `max-w-*` classes (e.g. `max-w-md`, `max-w-full`, `max-w-fit`).
    public static func maxInlineSize(_ value: TWTMaxInlineSize, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the logical block height of the element (maps to `height` in horizontal writing modes).
    /// Produces `h-*` classes (e.g. `h-4`, `h-full`, `h-auto`).
    public static func blockSize(_ value: TWTBlockSize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the minimum logical block height of the element.
    /// Produces `min-h-*` classes (e.g. `min-h-0`, `min-h-full`, `min-h-fit`).
    public static func minBlockSize(_ value: TWTMinBlockSize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the maximum logical block height of the element.
    /// Produces `max-h-*` classes (e.g. `max-h-full`, `max-h-screen`, `max-h-fit`).
    public static func maxBlockSize(_ value: TWTMaxBlockSize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
