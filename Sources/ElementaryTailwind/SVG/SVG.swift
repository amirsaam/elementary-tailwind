import Elementary

extension MarkupAttribute {
    /// Sets the fill color of SVG elements.
    /// Produces `fill-*` classes (e.g. `fill-blue-500`, `fill-red-600/50`).
    public static func fill(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTFill(color, opacity: opacity).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Removes the fill from SVG elements (transparent).
    /// Produces `fill-none` class.
    public static func fillNone(variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTFillNone.none.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the fill to `currentColor`.
    /// Produces `fill-current` class.
    public static func fillCurrent(variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTFillKeyword.current.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the fill to `inherit`.
    /// Produces `fill-inherit` class.
    public static func fillInherit(variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTFillKeyword.inherit.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the fill to `transparent`.
    /// Produces `fill-transparent` class.
    public static func fillTransparent(variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTFillKeyword.transparent.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the stroke color of SVG elements.
    /// Produces `stroke-*` classes (e.g. `stroke-green-500`, `stroke-yellow-600/50`).
    public static func stroke(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTStroke(color, opacity: opacity).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Removes the stroke from SVG elements.
    /// Produces `stroke-none` class.
    public static func strokeNone(variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTStrokeNone.none.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the width of the stroke on SVG elements.
    /// Produces `stroke-*` classes (e.g. `stroke-1`, `stroke-2`).
    public static func strokeWidth(
        _ value: TWTStrokeWidth,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
